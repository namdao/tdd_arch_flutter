import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_remote_model.freezed.dart';
part 'status_remote_model.g.dart';

@freezed
class StatusRemoteModel with _$StatusRemoteModel {
  factory StatusRemoteModel({
    @Default('') String message,
    @Default(0) int code,
    @Default(true) bool success,
  }) = _StatusRemoteModel;

  factory StatusRemoteModel.fromJson(Map<String, Object?> json) =>
      _$StatusRemoteModelFromJson(json);
}
