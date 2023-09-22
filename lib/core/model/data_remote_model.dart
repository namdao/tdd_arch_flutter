import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tdd_architecture_course/core/model/status_remote_model.dart';

part 'data_remote_model.g.dart';

@JsonSerializable()
class DataRemoteModel {
  DataRemoteModel({
    required this.status,
    this.data,
  });

  dynamic data;
  StatusRemoteModel status;

  factory DataRemoteModel.fromJson(Map<String, Object?> json) =>
      _$DataRemoteModelFromJson(json);
  Map<String, dynamic> toJson() => _$DataRemoteModelToJson(this);
}
