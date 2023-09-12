// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerateOtp _$$_GenerateOtpFromJson(Map<String, dynamic> json) =>
    _$_GenerateOtp(
      mobile: json['mobile'] as String? ?? '',
      action: json['action'] as String? ?? 'GENERATE_OTP',
      deviceId: json['deviceId'] as String? ?? '',
    );

Map<String, dynamic> _$$_GenerateOtpToJson(_$_GenerateOtp instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'action': instance.action,
      'deviceId': instance.deviceId,
    };
