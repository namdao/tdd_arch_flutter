// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DataRemoteModel _$$_DataRemoteModelFromJson(Map<String, dynamic> json) =>
    _$_DataRemoteModel(
      data: json['data'],
      status:
          StatusRemoteModel.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataRemoteModelToJson(_$_DataRemoteModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };
