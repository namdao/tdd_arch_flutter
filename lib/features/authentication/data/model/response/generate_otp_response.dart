import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_otp_response.g.dart';

@JsonSerializable()
class GenerateOtpResponse {
  GenerateOtpResponse({
    required this.sessionId,
  });

  String sessionId;

  factory GenerateOtpResponse.fromJson(Map<String, Object?> json) =>
      _$GenerateOtpResponseFromJson(json);
}
