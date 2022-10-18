// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgotPasswordModel _$ForgotPasswordModelFromJson(Map<String, dynamic> json) {
  return _ForgotPasswordModel.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordModel {
  String? get otpId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordModelCopyWith<ForgotPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordModelCopyWith<$Res> {
  factory $ForgotPasswordModelCopyWith(
          ForgotPasswordModel value, $Res Function(ForgotPasswordModel) then) =
      _$ForgotPasswordModelCopyWithImpl<$Res>;
  $Res call({String? otpId});
}

/// @nodoc
class _$ForgotPasswordModelCopyWithImpl<$Res>
    implements $ForgotPasswordModelCopyWith<$Res> {
  _$ForgotPasswordModelCopyWithImpl(this._value, this._then);

  final ForgotPasswordModel _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordModel) _then;

  @override
  $Res call({
    Object? otpId = freezed,
  }) {
    return _then(_value.copyWith(
      otpId: otpId == freezed
          ? _value.otpId
          : otpId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordModelCopyWith<$Res>
    implements $ForgotPasswordModelCopyWith<$Res> {
  factory _$$_ForgotPasswordModelCopyWith(_$_ForgotPasswordModel value,
          $Res Function(_$_ForgotPasswordModel) then) =
      __$$_ForgotPasswordModelCopyWithImpl<$Res>;
  @override
  $Res call({String? otpId});
}

/// @nodoc
class __$$_ForgotPasswordModelCopyWithImpl<$Res>
    extends _$ForgotPasswordModelCopyWithImpl<$Res>
    implements _$$_ForgotPasswordModelCopyWith<$Res> {
  __$$_ForgotPasswordModelCopyWithImpl(_$_ForgotPasswordModel _value,
      $Res Function(_$_ForgotPasswordModel) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordModel));

  @override
  _$_ForgotPasswordModel get _value => super._value as _$_ForgotPasswordModel;

  @override
  $Res call({
    Object? otpId = freezed,
  }) {
    return _then(_$_ForgotPasswordModel(
      otpId: otpId == freezed
          ? _value.otpId
          : otpId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForgotPasswordModel implements _ForgotPasswordModel {
  _$_ForgotPasswordModel({this.otpId});

  factory _$_ForgotPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$$_ForgotPasswordModelFromJson(json);

  @override
  final String? otpId;

  @override
  String toString() {
    return 'ForgotPasswordModel(otpId: $otpId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordModel &&
            const DeepCollectionEquality().equals(other.otpId, otpId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otpId));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordModelCopyWith<_$_ForgotPasswordModel> get copyWith =>
      __$$_ForgotPasswordModelCopyWithImpl<_$_ForgotPasswordModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForgotPasswordModelToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordModel implements ForgotPasswordModel {
  factory _ForgotPasswordModel({final String? otpId}) = _$_ForgotPasswordModel;

  factory _ForgotPasswordModel.fromJson(Map<String, dynamic> json) =
      _$_ForgotPasswordModel.fromJson;

  @override
  String? get otpId;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordModelCopyWith<_$_ForgotPasswordModel> get copyWith =>
      throw _privateConstructorUsedError;
}
