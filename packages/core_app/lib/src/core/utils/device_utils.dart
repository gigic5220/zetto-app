import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:device_marketing_names/device_marketing_names.dart';
import 'package:uuid/uuid.dart';
import 'package:version/version.dart';

import '../../../core/storage/storage.dart';

abstract class DeviceUtils {
  DeviceUtils._();

  static const String deviceIdKey = 'device_id_key';

  static Future<String> getDeviceId() async {
    final storage = PreferenceStorage();
    final savedId = await storage.readString(deviceIdKey);

    if (savedId != null) {
      return savedId;
    }

    final newId = const Uuid().v4();
    await storage.write(deviceIdKey, newId);
    return newId;
  }

  static Future<int> getAndroidBuildVersion() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    final androidInfo = await deviceInfoPlugin.androidInfo;
    return androidInfo.version.sdkInt;
  }

  static Future<Version?> getIOSVersion() async {
    final iosDeviceInfo = await DeviceInfoPlugin().iosInfo;
    return Version.parse(iosDeviceInfo.systemVersion);
  }

  static Future<bool> isAndroidSmallerThanT() async {
    if (Platform.isIOS) {
      return false;
    }

    return await getAndroidBuildVersion() < 33;
  }

  static String getLocale() {
    if (Platform.localeName.length >= 5) {
      return Platform.localeName.substring(0, 5);
    }
    return Platform.localeName;
  }

  static Future<String> getDeviceName() async {
    final deviceMarketingNames = DeviceMarketingNames();
    return await deviceMarketingNames.getSingleName();
  }

  static Future<String> getOSVersion() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final androidDeviceInfo = await deviceInfoPlugin.androidInfo;
      return 'Android ${androidDeviceInfo.version.release} (SDK ${androidDeviceInfo.version.sdkInt})';
    } else {
      final iosDeviceInfo = await deviceInfoPlugin.iosInfo;
      return '${iosDeviceInfo.systemName} ${iosDeviceInfo.systemVersion}';
    }
  }
}
