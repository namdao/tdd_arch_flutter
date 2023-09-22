// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
      tokenExpireAt: (json['tokenExpireAt'] as num).toDouble(),
    );

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'tokenExpireAt': instance.tokenExpireAt,
    };

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) => UserResponse(
      userId: json['userId'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'name': instance.name,
    };

VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) =>
    VerifyOtpResponse(
      auth: AuthResponse.fromJson(json['auth'] as Map<String, dynamic>),
      user: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerifyOtpResponseToJson(VerifyOtpResponse instance) =>
    <String, dynamic>{
      'auth': instance.auth,
      'user': instance.user,
    };
