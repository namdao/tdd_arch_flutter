// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthenticationState _$$_AuthenticationStateFromJson(
        Map<String, dynamic> json) =>
    _$_AuthenticationState(
      status: $enumDecode(_$AuthenticationStatusEnumMap, json['status']),
      errorMessage: json['errorMessage'] as String?,
      user: json['user'] == null
          ? null
          : UserEntity.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthenticationStateToJson(
        _$_AuthenticationState instance) =>
    <String, dynamic>{
      'status': _$AuthenticationStatusEnumMap[instance.status]!,
      'errorMessage': instance.errorMessage,
      'user': instance.user,
    };

const _$AuthenticationStatusEnumMap = {
  AuthenticationStatus.unknown: 'unknown',
  AuthenticationStatus.authenticated: 'authenticated',
  AuthenticationStatus.unauthenticated: 'unauthenticated',
};
