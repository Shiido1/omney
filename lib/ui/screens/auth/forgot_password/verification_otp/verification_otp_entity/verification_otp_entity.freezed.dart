// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verification_otp_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationOtpEntity _$VerificationOtpEntityFromJson(
    Map<String, dynamic> json) {
  return _VerificationOtpEntity.fromJson(json);
}

/// @nodoc
mixin _$VerificationOtpEntity {
  @JsonKey(name: 'Id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'OTP')
  String? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationOtpEntityCopyWith<VerificationOtpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationOtpEntityCopyWith<$Res> {
  factory $VerificationOtpEntityCopyWith(VerificationOtpEntity value,
          $Res Function(VerificationOtpEntity) then) =
      _$VerificationOtpEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Id') String? id, @JsonKey(name: 'OTP') String? otp});
}

/// @nodoc
class _$VerificationOtpEntityCopyWithImpl<$Res>
    implements $VerificationOtpEntityCopyWith<$Res> {
  _$VerificationOtpEntityCopyWithImpl(this._value, this._then);

  final VerificationOtpEntity _value;
  // ignore: unused_field
  final $Res Function(VerificationOtpEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_VerificationOtpEntityCopyWith<$Res>
    implements $VerificationOtpEntityCopyWith<$Res> {
  factory _$$_VerificationOtpEntityCopyWith(_$_VerificationOtpEntity value,
          $Res Function(_$_VerificationOtpEntity) then) =
      __$$_VerificationOtpEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Id') String? id, @JsonKey(name: 'OTP') String? otp});
}

/// @nodoc
class __$$_VerificationOtpEntityCopyWithImpl<$Res>
    extends _$VerificationOtpEntityCopyWithImpl<$Res>
    implements _$$_VerificationOtpEntityCopyWith<$Res> {
  __$$_VerificationOtpEntityCopyWithImpl(_$_VerificationOtpEntity _value,
      $Res Function(_$_VerificationOtpEntity) _then)
      : super(_value, (v) => _then(v as _$_VerificationOtpEntity));

  @override
  _$_VerificationOtpEntity get _value =>
      super._value as _$_VerificationOtpEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$_VerificationOtpEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerificationOtpEntity implements _VerificationOtpEntity {
  _$_VerificationOtpEntity(
      {@JsonKey(name: 'Id') this.id, @JsonKey(name: 'OTP') this.otp});

  factory _$_VerificationOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationOtpEntityFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final String? id;
  @override
  @JsonKey(name: 'OTP')
  final String? otp;

  @override
  String toString() {
    return 'VerificationOtpEntity(id: $id, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationOtpEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$$_VerificationOtpEntityCopyWith<_$_VerificationOtpEntity> get copyWith =>
      __$$_VerificationOtpEntityCopyWithImpl<_$_VerificationOtpEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationOtpEntityToJson(
      this,
    );
  }
}

abstract class _VerificationOtpEntity implements VerificationOtpEntity {
  factory _VerificationOtpEntity(
      {@JsonKey(name: 'Id') final String? id,
      @JsonKey(name: 'OTP') final String? otp}) = _$_VerificationOtpEntity;

  factory _VerificationOtpEntity.fromJson(Map<String, dynamic> json) =
      _$_VerificationOtpEntity.fromJson;

  @override
  @JsonKey(name: 'Id')
  String? get id;
  @override
  @JsonKey(name: 'OTP')
  String? get otp;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationOtpEntityCopyWith<_$_VerificationOtpEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
