import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.g.dart';

@JsonSerializable()
class UserEntity {
  UserEntity({
    String? fristName,
    String? lastName,
    String? email,
    String? mobile,
    String? userId,
    String? address,
  });

  factory UserEntity.fromJson(Map<String, Object?> json) =>
      _$UserEntityFromJson(json);
  Map<String, dynamic> toJson() => _$UserEntityToJson(this);
}
