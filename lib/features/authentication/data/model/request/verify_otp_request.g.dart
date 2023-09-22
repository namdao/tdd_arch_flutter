// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpRequest _$VerifyOtpRequestFromJson(Map<String, dynamic> json) =>
    VerifyOtpRequest(
      mobile: json['mobile'] as String,
      deviceId: json['deviceId'] as String,
      sessionId: json['sessionId'] as String,
      otp: json['otp'] as String,
      action: json['action'] as String? ?? 'VERIFY_OTP',
    );

Map<String, dynamic> _$VerifyOtpRequestToJson(VerifyOtpRequest instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'deviceId': instance.deviceId,
      'sessionId': instance.sessionId,
      'otp': instance.otp,
      'action': instance.action,
    };
