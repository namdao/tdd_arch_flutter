// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StatusRemoteModel _$$_StatusRemoteModelFromJson(Map<String, dynamic> json) =>
    _$_StatusRemoteModel(
      message: json['message'] as String? ?? '',
      code: json['code'] as int? ?? 0,
      success: json['success'] as bool? ?? true,
    );

Map<String, dynamic> _$$_StatusRemoteModelToJson(
        _$_StatusRemoteModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'success': instance.success,
    };
