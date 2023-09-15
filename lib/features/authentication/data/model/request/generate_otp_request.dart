import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_otp_request.freezed.dart';
part 'generate_otp_request.g.dart';

@freezed
class GenerateOtpRequest with _$GenerateOtpRequest {
  factory GenerateOtpRequest({
    @Default('') String mobile,
    @Default('GENERATE_OTP') String action,
    @Default('') String deviceId,
  }) = _GenerateOtpRequest;

  factory GenerateOtpRequest.fromJson(Map<String, Object?> json) =>
      _$GenerateOtpRequestFromJson(json);
}
