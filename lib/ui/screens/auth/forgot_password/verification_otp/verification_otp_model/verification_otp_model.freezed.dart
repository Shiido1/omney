// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verification_otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationOtpModel _$VerificationOtpModelFromJson(Map<String, dynamic> json) {
  return _VerificationOtpModel.fromJson(json);
}

/// @nodoc
mixin _$VerificationOtpModel {
  @JsonKey(name: 'reset_token')
  String? get resetToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationOtpModelCopyWith<VerificationOtpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationOtpModelCopyWith<$Res> {
  factory $VerificationOtpModelCopyWith(VerificationOtpModel value,
          $Res Function(VerificationOtpModel) then) =
      _$VerificationOtpModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'reset_token') String? resetToken});
}

/// @nodoc
class _$VerificationOtpModelCopyWithImpl<$Res>
    implements $VerificationOtpModelCopyWith<$Res> {
  _$VerificationOtpModelCopyWithImpl(this._value, this._then);

  final VerificationOtpModel _value;
  // ignore: unused_field
  final $Res Function(VerificationOtpModel) _then;

  @override
  $Res call({
    Object? resetToken = freezed,
  }) {
    return _then(_value.copyWith(
      resetToken: resetToken == freezed
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_VerificationOtpModelCopyWith<$Res>
    implements $VerificationOtpModelCopyWith<$Res> {
  factory _$$_VerificationOtpModelCopyWith(_$_VerificationOtpModel value,
          $Res Function(_$_VerificationOtpModel) then) =
      __$$_VerificationOtpModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'reset_token') String? resetToken});
}

/// @nodoc
class __$$_VerificationOtpModelCopyWithImpl<$Res>
    extends _$VerificationOtpModelCopyWithImpl<$Res>
    implements _$$_VerificationOtpModelCopyWith<$Res> {
  __$$_VerificationOtpModelCopyWithImpl(_$_VerificationOtpModel _value,
      $Res Function(_$_VerificationOtpModel) _then)
      : super(_value, (v) => _then(v as _$_VerificationOtpModel));

  @override
  _$_VerificationOtpModel get _value => super._value as _$_VerificationOtpModel;

  @override
  $Res call({
    Object? resetToken = freezed,
  }) {
    return _then(_$_VerificationOtpModel(
      resetToken: resetToken == freezed
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerificationOtpModel implements _VerificationOtpModel {
  _$_VerificationOtpModel({@JsonKey(name: 'reset_token') this.resetToken});

  factory _$_VerificationOtpModel.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationOtpModelFromJson(json);

  @override
  @JsonKey(name: 'reset_token')
  final String? resetToken;

  @override
  String toString() {
    return 'VerificationOtpModel(resetToken: $resetToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationOtpModel &&
            const DeepCollectionEquality()
                .equals(other.resetToken, resetToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(resetToken));

  @JsonKey(ignore: true)
  @override
  _$$_VerificationOtpModelCopyWith<_$_VerificationOtpModel> get copyWith =>
      __$$_VerificationOtpModelCopyWithImpl<_$_VerificationOtpModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationOtpModelToJson(
      this,
    );
  }
}

abstract class _VerificationOtpModel implements VerificationOtpModel {
  factory _VerificationOtpModel(
          {@JsonKey(name: 'reset_token') final String? resetToken}) =
      _$_VerificationOtpModel;

  factory _VerificationOtpModel.fromJson(Map<String, dynamic> json) =
      _$_VerificationOtpModel.fromJson;

  @override
  @JsonKey(name: 'reset_token')
  String? get resetToken;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationOtpModelCopyWith<_$_VerificationOtpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
