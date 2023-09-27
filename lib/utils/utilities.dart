import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:tdd_architecture_course/config/constant/config_constant.dart';

String getBaseUrl() {
  String baseUrl = configConstant['URL']['STAG'];
  if (!kDebugMode) {
    baseUrl = configConstant['URL']['PROD'];
  }
  return baseUrl;
}

Future<String> getDeviceId() async {
  String deviceId = '';
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  if (kIsWeb) {
    deviceId = deviceInfo.webBrowserInfo.toString();
  } else if (Platform.isAndroid) {
    AndroidDeviceInfo data = await deviceInfo.androidInfo;
    deviceId = data.id;
  } else if (Platform.isIOS) {
    IosDeviceInfo data = await deviceInfo.iosInfo;
    deviceId = data.identifierForVendor!;
  }
  return deviceId;
}
