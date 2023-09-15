// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SessionEntity _$$_SessionEntityFromJson(Map<String, dynamic> json) =>
    _$_SessionEntity(
      sessionId: json['sessionId'] as String? ?? '',
      mobile: json['mobile'] as String? ?? '',
      deviceId: json['deviceId'] as String? ?? '',
      errorCode: json['errorCode'] as int?,
      typeFraud: $enumDecodeNullable(_$TypeFraudEnumMap, json['typeFraud']) ??
          TypeFraud.unknow,
    );

Map<String, dynamic> _$$_SessionEntityToJson(_$_SessionEntity instance) =>
    <String, dynamic>{
      'sessionId': instance.sessionId,
      'mobile': instance.mobile,
      'deviceId': instance.deviceId,
      'errorCode': instance.errorCode,
      'typeFraud': _$TypeFraudEnumMap[instance.typeFraud]!,
    };

const _$TypeFraudEnumMap = {
  TypeFraud.device: 'device',
  TypeFraud.mobile: 'mobile',
  TypeFraud.warning: 'warning',
  TypeFraud.unknow: 'unknow',
};
