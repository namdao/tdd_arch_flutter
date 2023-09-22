// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusRemoteModel _$StatusRemoteModelFromJson(Map<String, dynamic> json) =>
    StatusRemoteModel(
      message: json['message'] as String,
      code: json['code'] as int,
      success: json['success'] as bool,
    );

Map<String, dynamic> _$StatusRemoteModelToJson(StatusRemoteModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'success': instance.success,
    };
