import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tdd_architecture_course/core/model/status_remote_model.dart';

part 'data_remote_model.freezed.dart';
part 'data_remote_model.g.dart';

@freezed
class DataRemoteModel with _$DataRemoteModel {
  factory DataRemoteModel({
    dynamic data,
    required StatusRemoteModel status,
  }) = _DataRemoteModel;

  factory DataRemoteModel.fromJson(Map<String, Object?> json) =>
      _$DataRemoteModelFromJson(json);
}
