import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tdd_architecture_course/features/authentication/domain/entity/user_entity.dart';

part 'auth_entity.g.dart';

@JsonSerializable()
class AuthEntity {
  AuthEntity({
    required this.token,
    required this.refreshToken,
    required this.tokenExpireAt,
    required this.userEntity,
  });

  final String token;
  final String refreshToken;
  final double tokenExpireAt;
  final UserEntity userEntity;

  factory AuthEntity.fromJson(Map<String, Object?> json) =>
      _$AuthEntityFromJson(json);

  Map<String, dynamic> toJson() => _$AuthEntityToJson(this);
}
