// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataRemoteModel _$DataRemoteModelFromJson(Map<String, dynamic> json) {
  return _DataRemoteModel.fromJson(json);
}

/// @nodoc
mixin _$DataRemoteModel {
  dynamic get data => throw _privateConstructorUsedError;
  StatusRemoteModel get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataRemoteModelCopyWith<DataRemoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRemoteModelCopyWith<$Res> {
  factory $DataRemoteModelCopyWith(
          DataRemoteModel value, $Res Function(DataRemoteModel) then) =
      _$DataRemoteModelCopyWithImpl<$Res, DataRemoteModel>;
  @useResult
  $Res call({dynamic data, StatusRemoteModel status});

  $StatusRemoteModelCopyWith<$Res> get status;
}

/// @nodoc
class _$DataRemoteModelCopyWithImpl<$Res, $Val extends DataRemoteModel>
    implements $DataRemoteModelCopyWith<$Res> {
  _$DataRemoteModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusRemoteModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusRemoteModelCopyWith<$Res> get status {
    return $StatusRemoteModelCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataRemoteModelCopyWith<$Res>
    implements $DataRemoteModelCopyWith<$Res> {
  factory _$$_DataRemoteModelCopyWith(
          _$_DataRemoteModel value, $Res Function(_$_DataRemoteModel) then) =
      __$$_DataRemoteModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic data, StatusRemoteModel status});

  @override
  $StatusRemoteModelCopyWith<$Res> get status;
}

/// @nodoc
class __$$_DataRemoteModelCopyWithImpl<$Res>
    extends _$DataRemoteModelCopyWithImpl<$Res, _$_DataRemoteModel>
    implements _$$_DataRemoteModelCopyWith<$Res> {
  __$$_DataRemoteModelCopyWithImpl(
      _$_DataRemoteModel _value, $Res Function(_$_DataRemoteModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? status = null,
  }) {
    return _then(_$_DataRemoteModel(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusRemoteModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataRemoteModel implements _DataRemoteModel {
  _$_DataRemoteModel({this.data, required this.status});

  factory _$_DataRemoteModel.fromJson(Map<String, dynamic> json) =>
      _$$_DataRemoteModelFromJson(json);

  @override
  final dynamic data;
  @override
  final StatusRemoteModel status;

  @override
  String toString() {
    return 'DataRemoteModel(data: $data, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataRemoteModel &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataRemoteModelCopyWith<_$_DataRemoteModel> get copyWith =>
      __$$_DataRemoteModelCopyWithImpl<_$_DataRemoteModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataRemoteModelToJson(
      this,
    );
  }
}

abstract class _DataRemoteModel implements DataRemoteModel {
  factory _DataRemoteModel(
      {final dynamic data,
      required final StatusRemoteModel status}) = _$_DataRemoteModel;

  factory _DataRemoteModel.fromJson(Map<String, dynamic> json) =
      _$_DataRemoteModel.fromJson;

  @override
  dynamic get data;
  @override
  StatusRemoteModel get status;
  @override
  @JsonKey(ignore: true)
  _$$_DataRemoteModelCopyWith<_$_DataRemoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
