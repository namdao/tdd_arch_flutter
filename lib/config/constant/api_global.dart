import 'package:tdd_architecture_course/config/constant/config_constant.dart';

class ApiGlobal {
  final actionOtp =
      '/${configConstant['GATEWAY']['B2C']}/v3/${configConstant['SERVICES']['AUTH_SERVICE']}/otp';
  final acttionToken =
      '/${configConstant['GATEWAY']['B2C']}/v3/${configConstant['SERVICES']['AUTH_SERVICE']}/token';
}
