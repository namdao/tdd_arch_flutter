import 'package:freezed_annotation/freezed_annotation.dart';

part 'status_remote_model.g.dart';

@JsonSerializable()
class StatusRemoteModel {
  StatusRemoteModel({
    required this.message,
    required this.code,
    required this.success,
  });
  String message;
  int code;
  bool success;

  factory StatusRemoteModel.fromJson(Map<String, Object?> json) =>
      _$StatusRemoteModelFromJson(json);

  Map<String, dynamic> toJson() => _$StatusRemoteModelToJson(this);
}
