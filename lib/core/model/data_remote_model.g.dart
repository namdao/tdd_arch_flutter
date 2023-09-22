// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_remote_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DataRemoteModel _$DataRemoteModelFromJson(Map<String, dynamic> json) =>
    DataRemoteModel(
      status:
          StatusRemoteModel.fromJson(json['status'] as Map<String, dynamic>),
      data: json['data'],
    );

Map<String, dynamic> _$DataRemoteModelToJson(DataRemoteModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
    };
