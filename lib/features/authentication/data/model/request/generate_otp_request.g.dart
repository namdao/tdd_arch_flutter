// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_otp_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateOtpRequest _$GenerateOtpRequestFromJson(Map<String, dynamic> json) =>
    GenerateOtpRequest(
      mobile: json['mobile'] as String,
      deviceId: json['deviceId'] as String,
      action: json['action'] as String? ?? 'GENERATE_OTP',
    );

Map<String, dynamic> _$GenerateOtpRequestToJson(GenerateOtpRequest instance) =>
    <String, dynamic>{
      'mobile': instance.mobile,
      'deviceId': instance.deviceId,
      'action': instance.action,
    };
