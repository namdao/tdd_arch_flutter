// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatusRemoteModel _$StatusRemoteModelFromJson(Map<String, dynamic> json) {
  return _StatusRemoteModel.fromJson(json);
}

/// @nodoc
mixin _$StatusRemoteModel {
  String get message => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusRemoteModelCopyWith<StatusRemoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusRemoteModelCopyWith<$Res> {
  factory $StatusRemoteModelCopyWith(
          StatusRemoteModel value, $Res Function(StatusRemoteModel) then) =
      _$StatusRemoteModelCopyWithImpl<$Res, StatusRemoteModel>;
  @useResult
  $Res call({String message, int code, bool success});
}

/// @nodoc
class _$StatusRemoteModelCopyWithImpl<$Res, $Val extends StatusRemoteModel>
    implements $StatusRemoteModelCopyWith<$Res> {
  _$StatusRemoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatusRemoteModelCopyWith<$Res>
    implements $StatusRemoteModelCopyWith<$Res> {
  factory _$$_StatusRemoteModelCopyWith(_$_StatusRemoteModel value,
          $Res Function(_$_StatusRemoteModel) then) =
      __$$_StatusRemoteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, int code, bool success});
}

/// @nodoc
class __$$_StatusRemoteModelCopyWithImpl<$Res>
    extends _$StatusRemoteModelCopyWithImpl<$Res, _$_StatusRemoteModel>
    implements _$$_StatusRemoteModelCopyWith<$Res> {
  __$$_StatusRemoteModelCopyWithImpl(
      _$_StatusRemoteModel _value, $Res Function(_$_StatusRemoteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? code = null,
    Object? success = null,
  }) {
    return _then(_$_StatusRemoteModel(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StatusRemoteModel implements _StatusRemoteModel {
  _$_StatusRemoteModel({this.message = '', this.code = 0, this.success = true});

  factory _$_StatusRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$$_StatusRemoteModelFromJson(json);

  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int code;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'StatusRemoteModel(message: $message, code: $code, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusRemoteModel &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.success, success) || other.success == success));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, code, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusRemoteModelCopyWith<_$_StatusRemoteModel> get copyWith =>
      __$$_StatusRemoteModelCopyWithImpl<_$_StatusRemoteModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatusRemoteModelToJson(
      this,
    );
  }
}

abstract class _StatusRemoteModel implements StatusRemoteModel {
  factory _StatusRemoteModel(
      {final String message,
      final int code,
      final bool success}) = _$_StatusRemoteModel;

  factory _StatusRemoteModel.fromJson(Map<String, dynamic> json) =
      _$_StatusRemoteModel.fromJson;

  @override
  String get message;
  @override
  int get code;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_StatusRemoteModelCopyWith<_$_StatusRemoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
