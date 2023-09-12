import 'package:flutter/foundation.dart';
import 'package:tdd_architecture_course/config/constant/config_constant.dart';

String getBaseUrl() {
  String baseUrl = configConstant['URL']['STAG'];
  if (!kDebugMode) {
    baseUrl = configConstant['URL']['PROD'];
  }
  return baseUrl;
}
