import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_otp_request.g.dart';

@JsonSerializable()
class GenerateOtpRequest {
  GenerateOtpRequest({
    required this.mobile,
    required this.deviceId,
    this.action = 'GENERATE_OTP',
  });
  final String mobile;
  final String deviceId;
  final String action;

  factory GenerateOtpRequest.fromJson(Map<String, Object?> json) =>
      _$GenerateOtpRequestFromJson(json);
  Map<String, dynamic> toJson() => _$GenerateOtpRequestToJson(this);
}
