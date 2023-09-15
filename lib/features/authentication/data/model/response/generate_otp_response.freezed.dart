// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generate_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenerateOtpResponse _$GenerateOtpResponseFromJson(Map<String, dynamic> json) {
  return _GenerateOtpResponse.fromJson(json);
}

/// @nodoc
mixin _$GenerateOtpResponse {
  String get sessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenerateOtpResponseCopyWith<GenerateOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenerateOtpResponseCopyWith<$Res> {
  factory $GenerateOtpResponseCopyWith(
          GenerateOtpResponse value, $Res Function(GenerateOtpResponse) then) =
      _$GenerateOtpResponseCopyWithImpl<$Res, GenerateOtpResponse>;
  @useResult
  $Res call({String sessionId});
}

/// @nodoc
class _$GenerateOtpResponseCopyWithImpl<$Res, $Val extends GenerateOtpResponse>
    implements $GenerateOtpResponseCopyWith<$Res> {
  _$GenerateOtpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
  }) {
    return _then(_value.copyWith(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenerateOtpResponseCopyWith<$Res>
    implements $GenerateOtpResponseCopyWith<$Res> {
  factory _$$_GenerateOtpResponseCopyWith(_$_GenerateOtpResponse value,
          $Res Function(_$_GenerateOtpResponse) then) =
      __$$_GenerateOtpResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionId});
}

/// @nodoc
class __$$_GenerateOtpResponseCopyWithImpl<$Res>
    extends _$GenerateOtpResponseCopyWithImpl<$Res, _$_GenerateOtpResponse>
    implements _$$_GenerateOtpResponseCopyWith<$Res> {
  __$$_GenerateOtpResponseCopyWithImpl(_$_GenerateOtpResponse _value,
      $Res Function(_$_GenerateOtpResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
  }) {
    return _then(_$_GenerateOtpResponse(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenerateOtpResponse implements _GenerateOtpResponse {
  _$_GenerateOtpResponse({this.sessionId = ''});

  factory _$_GenerateOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GenerateOtpResponseFromJson(json);

  @override
  @JsonKey()
  final String sessionId;

  @override
  String toString() {
    return 'GenerateOtpResponse(sessionId: $sessionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenerateOtpResponse &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenerateOtpResponseCopyWith<_$_GenerateOtpResponse> get copyWith =>
      __$$_GenerateOtpResponseCopyWithImpl<_$_GenerateOtpResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenerateOtpResponseToJson(
      this,
    );
  }
}

abstract class _GenerateOtpResponse implements GenerateOtpResponse {
  factory _GenerateOtpResponse({final String sessionId}) =
      _$_GenerateOtpResponse;

  factory _GenerateOtpResponse.fromJson(Map<String, dynamic> json) =
      _$_GenerateOtpResponse.fromJson;

  @override
  String get sessionId;
  @override
  @JsonKey(ignore: true)
  _$$_GenerateOtpResponseCopyWith<_$_GenerateOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
