import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_otp_request.freezed.dart';
part 'generate_otp_request.g.dart';

@freezed
class GenerateOtp with _$GenerateOtp {
  factory GenerateOtp({
    @Default('') String mobile,
    @Default('GENERATE_OTP') String action,
    @Default('') String deviceId,
  }) = _GenerateOtp;

  factory GenerateOtp.fromJson(Map<String, Object?> json) =>
      _$GenerateOtpFromJson(json);
}
