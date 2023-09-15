import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_otp_response.freezed.dart';
part 'generate_otp_response.g.dart';

@freezed
class GenerateOtpResponse with _$GenerateOtpResponse {
  factory GenerateOtpResponse({
    @Default('') String sessionId,
  }) = _GenerateOtpResponse;

  factory GenerateOtpResponse.fromJson(Map<String, Object?> json) =>
      _$GenerateOtpResponseFromJson(json);
}
