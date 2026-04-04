import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../utils/device_utils.dart';

class CustomHeaderInterceptor extends Interceptor {
  CustomHeaderInterceptor(this.dio, this.getHeaders);

  final Dio dio;
  final Map<String, dynamic> Function()? getHeaders;

  final versionAsync = PackageInfo.fromPlatform();
  final deviceAsync = DeviceUtils.getDeviceName();
  final osVersionAsync = DeviceUtils.getOSVersion();
  final deviceIdAsync = DeviceUtils.getDeviceId();
  final locale = DeviceUtils.getLocale();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    final version = await versionAsync;
    final device = await deviceAsync;
    final osVersion = await osVersionAsync;
    final deviceId = await deviceIdAsync;

    options.headers['X-App-Version'] = '${version.version}+${version.buildNumber}';
    options.headers['X-Device-Name'] = device;
    options.headers['X-OS-Version'] = osVersion;
    options.headers['X-Device-Id'] = deviceId;
    options.headers['X-Locale'] = locale;

    if (getHeaders != null) {
      options.headers.addAll(getHeaders!());
    }

    return handler.next(options);
  }
}
