// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SessionEntity _$SessionEntityFromJson(Map<String, dynamic> json) {
  return _SessionEntity.fromJson(json);
}

/// @nodoc
mixin _$SessionEntity {
  String get sessionId => throw _privateConstructorUsedError;
  String get mobile => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;
  int? get errorCode => throw _privateConstructorUsedError;
  TypeFraud get typeFraud => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionEntityCopyWith<SessionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionEntityCopyWith<$Res> {
  factory $SessionEntityCopyWith(
          SessionEntity value, $Res Function(SessionEntity) then) =
      _$SessionEntityCopyWithImpl<$Res, SessionEntity>;
  @useResult
  $Res call(
      {String sessionId,
      String mobile,
      String deviceId,
      int? errorCode,
      TypeFraud typeFraud});
}

/// @nodoc
class _$SessionEntityCopyWithImpl<$Res, $Val extends SessionEntity>
    implements $SessionEntityCopyWith<$Res> {
  _$SessionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? mobile = null,
    Object? deviceId = null,
    Object? errorCode = freezed,
    Object? typeFraud = null,
  }) {
    return _then(_value.copyWith(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      typeFraud: null == typeFraud
          ? _value.typeFraud
          : typeFraud // ignore: cast_nullable_to_non_nullable
              as TypeFraud,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SessionEntityCopyWith<$Res>
    implements $SessionEntityCopyWith<$Res> {
  factory _$$_SessionEntityCopyWith(
          _$_SessionEntity value, $Res Function(_$_SessionEntity) then) =
      __$$_SessionEntityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sessionId,
      String mobile,
      String deviceId,
      int? errorCode,
      TypeFraud typeFraud});
}

/// @nodoc
class __$$_SessionEntityCopyWithImpl<$Res>
    extends _$SessionEntityCopyWithImpl<$Res, _$_SessionEntity>
    implements _$$_SessionEntityCopyWith<$Res> {
  __$$_SessionEntityCopyWithImpl(
      _$_SessionEntity _value, $Res Function(_$_SessionEntity) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? mobile = null,
    Object? deviceId = null,
    Object? errorCode = freezed,
    Object? typeFraud = null,
  }) {
    return _then(_$_SessionEntity(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      errorCode: freezed == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int?,
      typeFraud: null == typeFraud
          ? _value.typeFraud
          : typeFraud // ignore: cast_nullable_to_non_nullable
              as TypeFraud,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SessionEntity implements _SessionEntity {
  _$_SessionEntity(
      {this.sessionId = '',
      this.mobile = '',
      this.deviceId = '',
      this.errorCode,
      this.typeFraud = TypeFraud.unknow});

  factory _$_SessionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_SessionEntityFromJson(json);

  @override
  @JsonKey()
  final String sessionId;
  @override
  @JsonKey()
  final String mobile;
  @override
  @JsonKey()
  final String deviceId;
  @override
  final int? errorCode;
  @override
  @JsonKey()
  final TypeFraud typeFraud;

  @override
  String toString() {
    return 'SessionEntity(sessionId: $sessionId, mobile: $mobile, deviceId: $deviceId, errorCode: $errorCode, typeFraud: $typeFraud)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SessionEntity &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.typeFraud, typeFraud) ||
                other.typeFraud == typeFraud));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sessionId, mobile, deviceId, errorCode, typeFraud);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SessionEntityCopyWith<_$_SessionEntity> get copyWith =>
      __$$_SessionEntityCopyWithImpl<_$_SessionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SessionEntityToJson(
      this,
    );
  }
}

abstract class _SessionEntity implements SessionEntity {
  factory _SessionEntity(
      {final String sessionId,
      final String mobile,
      final String deviceId,
      final int? errorCode,
      final TypeFraud typeFraud}) = _$_SessionEntity;

  factory _SessionEntity.fromJson(Map<String, dynamic> json) =
      _$_SessionEntity.fromJson;

  @override
  String get sessionId;
  @override
  String get mobile;
  @override
  String get deviceId;
  @override
  int? get errorCode;
  @override
  TypeFraud get typeFraud;
  @override
  @JsonKey(ignore: true)
  _$$_SessionEntityCopyWith<_$_SessionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
