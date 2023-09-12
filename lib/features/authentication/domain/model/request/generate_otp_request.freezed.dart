// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_otp_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenerateOtp _$GenerateOtpFromJson(Map<String, dynamic> json) {
  return _GenerateOtp.fromJson(json);
}

/// @nodoc
mixin _$GenerateOtp {
  String get mobile => throw _privateConstructorUsedError;
  String get action => throw _privateConstructorUsedError;
  String get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerateOtpCopyWith<GenerateOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateOtpCopyWith<$Res> {
  factory $GenerateOtpCopyWith(
          GenerateOtp value, $Res Function(GenerateOtp) then) =
      _$GenerateOtpCopyWithImpl<$Res, GenerateOtp>;
  @useResult
  $Res call({String mobile, String action, String deviceId});
}

/// @nodoc
class _$GenerateOtpCopyWithImpl<$Res, $Val extends GenerateOtp>
    implements $GenerateOtpCopyWith<$Res> {
  _$GenerateOtpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? action = null,
    Object? deviceId = null,
  }) {
    return _then(_value.copyWith(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenerateOtpCopyWith<$Res>
    implements $GenerateOtpCopyWith<$Res> {
  factory _$$_GenerateOtpCopyWith(
          _$_GenerateOtp value, $Res Function(_$_GenerateOtp) then) =
      __$$_GenerateOtpCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mobile, String action, String deviceId});
}

/// @nodoc
class __$$_GenerateOtpCopyWithImpl<$Res>
    extends _$GenerateOtpCopyWithImpl<$Res, _$_GenerateOtp>
    implements _$$_GenerateOtpCopyWith<$Res> {
  __$$_GenerateOtpCopyWithImpl(
      _$_GenerateOtp _value, $Res Function(_$_GenerateOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
    Object? action = null,
    Object? deviceId = null,
  }) {
    return _then(_$_GenerateOtp(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerateOtp implements _GenerateOtp {
  _$_GenerateOtp(
      {this.mobile = '', this.action = 'GENERATE_OTP', this.deviceId = ''});

  factory _$_GenerateOtp.fromJson(Map<String, dynamic> json) =>
      _$$_GenerateOtpFromJson(json);

  @override
  @JsonKey()
  final String mobile;
  @override
  @JsonKey()
  final String action;
  @override
  @JsonKey()
  final String deviceId;

  @override
  String toString() {
    return 'GenerateOtp(mobile: $mobile, action: $action, deviceId: $deviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateOtp &&
            (identical(other.mobile, mobile) || other.mobile == mobile) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mobile, action, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateOtpCopyWith<_$_GenerateOtp> get copyWith =>
      __$$_GenerateOtpCopyWithImpl<_$_GenerateOtp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerateOtpToJson(
      this,
    );
  }
}

abstract class _GenerateOtp implements GenerateOtp {
  factory _GenerateOtp(
      {final String mobile,
      final String action,
      final String deviceId}) = _$_GenerateOtp;

  factory _GenerateOtp.fromJson(Map<String, dynamic> json) =
      _$_GenerateOtp.fromJson;

  @override
  String get mobile;
  @override
  String get action;
  @override
  String get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$_GenerateOtpCopyWith<_$_GenerateOtp> get copyWith =>
      throw _privateConstructorUsedError;
}
