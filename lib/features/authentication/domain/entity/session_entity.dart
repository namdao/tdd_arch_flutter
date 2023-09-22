import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_entity.g.dart';

enum TypeFraud { device, mobile, warning, unknow }

@JsonSerializable()
class SessionEntity {
  SessionEntity({
    required this.sessionId,
    required this.mobile,
    required this.deviceId,
    this.errorCode,
    this.typeFraud = TypeFraud.unknow,
  });

  final String sessionId;
  final String mobile;
  final String deviceId;
  final int? errorCode;
  final TypeFraud? typeFraud;

  factory SessionEntity.fromJson(Map<String, Object?> json) =>
      _$SessionEntityFromJson(json);
  Map<String, dynamic> toJson() => _$SessionEntityToJson(this);
}
