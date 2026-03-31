import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:talker/talker.dart';
import 'package:tandangi/core/di/di.dart';
import 'package:tandangi/domain/repository/short_url_repository.dart';
import 'package:tandangi/util/extension/string_extension.dart';

enum DynamicLinkType { shortCode, linkParameter, normal }

class DynamicLinkService {
  DynamicLinkService({required Talker talker}) : _talker = talker;

  final Talker _talker;
  final AppLinks _appLinks = AppLinks();

  StreamSubscription<Uri>? _uriLinkSubscription;
  bool _isInitialized = false;

  Future<void> initialize() async {
    if (_isInitialized) {
      _talker.debug('DynamicLinkService already initialized');
      return;
    }

    _isInitialized = true;

    try {
      final initialUri = await _appLinks.getInitialLink();
      _talker.debug('initial dynamicLink = $initialUri');

      if (initialUri != null) {
        await _handleIncomingUri(initialUri);
      }
    } catch (error, stackTrace) {
      _talker.error('Failed to get initial dynamic link', error, stackTrace);
    }

    _uriLinkSubscription = _appLinks.uriLinkStream.listen(
      (uri) async {
        await _handleIncomingUri(uri);
      },
      onError: (error, stackTrace) {
        _talker.error('dynamicLink stream error', error, stackTrace);
      },
    );
  }

  Future<void> dispose() async {
    await _uriLinkSubscription?.cancel();
    _uriLinkSubscription = null;
    _isInitialized = false;
  }

  Future<void> _handleIncomingUri(Uri uri) async {
    _talker.debug('dynamicLink = $uri');

    try {
      final dynamicLinkType = getDynamicLinkType(uri);
      _talker.debug('dynamicLinkType = $dynamicLinkType');

      final deepLink = switch (dynamicLinkType) {
        DynamicLinkType.shortCode => await handleShortCode(uri),
        DynamicLinkType.linkParameter => handleLinkParameter(uri),
        DynamicLinkType.normal => uri,
      };

      _talker.debug('deepLink = $deepLink');

      if (deepLink == null) {
        _talker.warning('deepLink is null. original uri = $uri');
        return;
      }

      //DeepLinkManager.handleUrl(deepLink);
    } catch (error, stackTrace) {
      _talker.error('Failed to handle dynamic link: $uri', error, stackTrace);
    }
  }

  DynamicLinkType getDynamicLinkType(Uri uri) {
    final pathSegments = uri.pathSegments;

    if (pathSegments.length == 2 &&
        pathSegments[0] == 's' &&
        pathSegments[1].length >= 3 &&
        pathSegments[1].length <= 16) {
      return DynamicLinkType.shortCode;
    }

    if (uri.queryParameters.containsKey('link')) {
      return DynamicLinkType.linkParameter;
    }

    return DynamicLinkType.normal;
  }

  Future<Uri?> handleShortCode(Uri uri) async {
    if (uri.pathSegments.length < 2) {
      _talker.warning('Invalid shortCode uri: $uri');
      return null;
    }

    final shortCode = uri.pathSegments[1];

    final response = await getIt<ShortUrlRepository>().getShortUrlDecode(
      shortCode: shortCode,
    );

    if (!response.isExist) {
      _talker.warning('Short code does not exist: $shortCode');
      return null;
    }

    final decodedUri = Uri.tryParse(response);
    if (decodedUri == null) {
      _talker.warning('Failed to parse decoded short url: $response');
      return null;
    }

    _talker.debug('decoded shortCode uri = $decodedUri');

    final decodedType = getDynamicLinkType(decodedUri);
    _talker.debug('decoded dynamicLinkType = $decodedType');

    return switch (decodedType) {
      DynamicLinkType.shortCode => null,
      DynamicLinkType.linkParameter => handleLinkParameter(decodedUri),
      DynamicLinkType.normal => decodedUri,
    };
  }

  Uri? handleLinkParameter(Uri uri) {
    final link = uri.queryParameters['link'];

    if (link == null || link.isEmpty) {
      _talker.warning('link query parameter is empty: $uri');
      return null;
    }

    final linkUri = Uri.tryParse(link);
    if (linkUri == null) {
      _talker.warning('Failed to parse link parameter: $link');
      return null;
    }

    return linkUri;
  }

  Future<Uri?> getInitialLink() async {
    return _appLinks.getInitialLink();
  }
}
