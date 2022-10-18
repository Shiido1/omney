// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verification_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationEntity _$VerificationEntityFromJson(Map<String, dynamic> json) {
  return _VerificationEntity.fromJson(json);
}

/// @nodoc
mixin _$VerificationEntity {
  @JsonKey(name: 'Id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'OTP')
  String? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationEntityCopyWith<VerificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationEntityCopyWith<$Res> {
  factory $VerificationEntityCopyWith(
          VerificationEntity value, $Res Function(VerificationEntity) then) =
      _$VerificationEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Id') String? id, @JsonKey(name: 'OTP') String? otp});
}

/// @nodoc
class _$VerificationEntityCopyWithImpl<$Res>
    implements $VerificationEntityCopyWith<$Res> {
  _$VerificationEntityCopyWithImpl(this._value, this._then);

  final VerificationEntity _value;
  // ignore: unused_field
  final $Res Function(VerificationEntity) _then;

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
abstract class _$$_VerificationEntityCopyWith<$Res>
    implements $VerificationEntityCopyWith<$Res> {
  factory _$$_VerificationEntityCopyWith(_$_VerificationEntity value,
          $Res Function(_$_VerificationEntity) then) =
      __$$_VerificationEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Id') String? id, @JsonKey(name: 'OTP') String? otp});
}

/// @nodoc
class __$$_VerificationEntityCopyWithImpl<$Res>
    extends _$VerificationEntityCopyWithImpl<$Res>
    implements _$$_VerificationEntityCopyWith<$Res> {
  __$$_VerificationEntityCopyWithImpl(
      _$_VerificationEntity _value, $Res Function(_$_VerificationEntity) _then)
      : super(_value, (v) => _then(v as _$_VerificationEntity));

  @override
  _$_VerificationEntity get _value => super._value as _$_VerificationEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$_VerificationEntity(
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
class _$_VerificationEntity implements _VerificationEntity {
  _$_VerificationEntity(
      {@JsonKey(name: 'Id') this.id, @JsonKey(name: 'OTP') this.otp});

  factory _$_VerificationEntity.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationEntityFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final String? id;
  @override
  @JsonKey(name: 'OTP')
  final String? otp;

  @override
  String toString() {
    return 'VerificationEntity(id: $id, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationEntity &&
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
  _$$_VerificationEntityCopyWith<_$_VerificationEntity> get copyWith =>
      __$$_VerificationEntityCopyWithImpl<_$_VerificationEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationEntityToJson(
      this,
    );
  }
}

abstract class _VerificationEntity implements VerificationEntity {
  factory _VerificationEntity(
      {@JsonKey(name: 'Id') final String? id,
      @JsonKey(name: 'OTP') final String? otp}) = _$_VerificationEntity;

  factory _VerificationEntity.fromJson(Map<String, dynamic> json) =
      _$_VerificationEntity.fromJson;

  @override
  @JsonKey(name: 'Id')
  String? get id;
  @override
  @JsonKey(name: 'OTP')
  String? get otp;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationEntityCopyWith<_$_VerificationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
