import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response.g.dart';

@JsonSerializable()
class AuthResponse {
  const AuthResponse(
      {required this.token,
      required this.refreshToken,
      required this.tokenExpireAt});
  final String token;
  final String refreshToken;
  final double tokenExpireAt;

  factory AuthResponse.fromJson(Map<String, Object?> json) =>
      _$AuthResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}

@JsonSerializable()
class UserResponse {
  UserResponse({required this.userId, required this.name});

  final String userId;
  final String name;
  factory UserResponse.fromJson(Map<String, Object?> json) =>
      _$UserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

@JsonSerializable()
class VerifyOtpResponse {
  VerifyOtpResponse({
    required this.auth,
    required this.user,
  });

  AuthResponse auth;
  UserResponse user;

  factory VerifyOtpResponse.fromJson(Map<String, Object?> json) =>
      _$VerifyOtpResponseFromJson(json);
  Map<String, dynamic> toJson() => _$VerifyOtpResponseToJson(this);
}
