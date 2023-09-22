import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_request.g.dart';

@JsonSerializable()
class VerifyOtpRequest {
  const VerifyOtpRequest(
      {required this.mobile,
      required this.deviceId,
      required this.sessionId,
      required this.otp,
      this.action = 'VERIFY_OTP'});
  final String mobile;
  final String deviceId;
  final String sessionId;
  final String otp;
  final String action;
  factory VerifyOtpRequest.fromJson(Map<String, Object?> json) =>
      _$VerifyOtpRequestFromJson(json);
  Map<String, dynamic> toJson() => _$VerifyOtpRequestToJson(this);
}
