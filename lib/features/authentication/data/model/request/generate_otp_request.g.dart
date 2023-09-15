// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenerateOtpRequest _$$_GenerateOtpRequestFromJson(
        Map<String, dynamic> json) =>
    _$_GenerateOtpRequest(
      mobile: json['mobile'] as String? ?? '',
      action: json['action'] as String? ?? 'GENERATE_OTP',
      deviceId: json['deviceId'] as String? ?? '',
    );

Map<String, dynamic> _$$_GenerateOtpRequestToJson(
        _$_GenerateOtpRequest instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'action': instance.action,
      'deviceId': instance.deviceId,
    };
