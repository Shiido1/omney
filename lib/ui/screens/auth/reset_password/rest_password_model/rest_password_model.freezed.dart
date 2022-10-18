// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rest_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestPasswordModel _$RestPasswordModelFromJson(Map<String, dynamic> json) {
  return _RestPasswordModel.fromJson(json);
}

/// @nodoc
mixin _$RestPasswordModel {
  String? get message => throw _privateConstructorUsedError;
  dynamic get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestPasswordModelCopyWith<RestPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestPasswordModelCopyWith<$Res> {
  factory $RestPasswordModelCopyWith(
          RestPasswordModel value, $Res Function(RestPasswordModel) then) =
      _$RestPasswordModelCopyWithImpl<$Res>;
  $Res call({String? message, dynamic errors});
}

/// @nodoc
class _$RestPasswordModelCopyWithImpl<$Res>
    implements $RestPasswordModelCopyWith<$Res> {
  _$RestPasswordModelCopyWithImpl(this._value, this._then);

  final RestPasswordModel _value;
  // ignore: unused_field
  final $Res Function(RestPasswordModel) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_RestPasswordModelCopyWith<$Res>
    implements $RestPasswordModelCopyWith<$Res> {
  factory _$$_RestPasswordModelCopyWith(_$_RestPasswordModel value,
          $Res Function(_$_RestPasswordModel) then) =
      __$$_RestPasswordModelCopyWithImpl<$Res>;
  @override
  $Res call({String? message, dynamic errors});
}

/// @nodoc
class __$$_RestPasswordModelCopyWithImpl<$Res>
    extends _$RestPasswordModelCopyWithImpl<$Res>
    implements _$$_RestPasswordModelCopyWith<$Res> {
  __$$_RestPasswordModelCopyWithImpl(
      _$_RestPasswordModel _value, $Res Function(_$_RestPasswordModel) _then)
      : super(_value, (v) => _then(v as _$_RestPasswordModel));

  @override
  _$_RestPasswordModel get _value => super._value as _$_RestPasswordModel;

  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_RestPasswordModel(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RestPasswordModel implements _RestPasswordModel {
  _$_RestPasswordModel({this.message, this.errors});

  factory _$_RestPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$$_RestPasswordModelFromJson(json);

  @override
  final String? message;
  @override
  final dynamic errors;

  @override
  String toString() {
    return 'RestPasswordModel(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RestPasswordModel &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$$_RestPasswordModelCopyWith<_$_RestPasswordModel> get copyWith =>
      __$$_RestPasswordModelCopyWithImpl<_$_RestPasswordModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestPasswordModelToJson(
      this,
    );
  }
}

abstract class _RestPasswordModel implements RestPasswordModel {
  factory _RestPasswordModel({final String? message, final dynamic errors}) =
      _$_RestPasswordModel;

  factory _RestPasswordModel.fromJson(Map<String, dynamic> json) =
      _$_RestPasswordModel.fromJson;

  @override
  String? get message;
  @override
  dynamic get errors;
  @override
  @JsonKey(ignore: true)
  _$$_RestPasswordModelCopyWith<_$_RestPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
