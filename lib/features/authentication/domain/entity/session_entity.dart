import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_entity.freezed.dart';
part 'session_entity.g.dart';

enum TypeFraud { device, mobile, warning, unknow }

@freezed
class SessionEntity with _$SessionEntity {
  factory SessionEntity({
    @Default('') String sessionId,
    @Default('') String mobile,
    @Default('') String deviceId,
    int? errorCode,
    @Default(TypeFraud.unknow) TypeFraud typeFraud,
  }) = _SessionEntity;

  factory SessionEntity.fromJson(Map<String, Object?> json) =>
      _$SessionEntityFromJson(json);
}
