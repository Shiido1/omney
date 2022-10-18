// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reset_password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResetPasswordEntity _$ResetPasswordEntityFromJson(Map<String, dynamic> json) {
  return _ResetPasswordEntity.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordEntity {
  @JsonKey(name: 'Token')
  String? get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'NewPassword')
  String? get newPassword => throw _privateConstructorUsedError;
  @JsonKey(name: 'ConfirmPassword')
  String? get confirmPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordEntityCopyWith<ResetPasswordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEntityCopyWith<$Res> {
  factory $ResetPasswordEntityCopyWith(
          ResetPasswordEntity value, $Res Function(ResetPasswordEntity) then) =
      _$ResetPasswordEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'Token') String? token,
      @JsonKey(name: 'NewPassword') String? newPassword,
      @JsonKey(name: 'ConfirmPassword') String? confirmPassword});
}

/// @nodoc
class _$ResetPasswordEntityCopyWithImpl<$Res>
    implements $ResetPasswordEntityCopyWith<$Res> {
  _$ResetPasswordEntityCopyWithImpl(this._value, this._then);

  final ResetPasswordEntity _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordEntity) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ResetPasswordEntityCopyWith<$Res>
    implements $ResetPasswordEntityCopyWith<$Res> {
  factory _$$_ResetPasswordEntityCopyWith(_$_ResetPasswordEntity value,
          $Res Function(_$_ResetPasswordEntity) then) =
      __$$_ResetPasswordEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'Token') String? token,
      @JsonKey(name: 'NewPassword') String? newPassword,
      @JsonKey(name: 'ConfirmPassword') String? confirmPassword});
}

/// @nodoc
class __$$_ResetPasswordEntityCopyWithImpl<$Res>
    extends _$ResetPasswordEntityCopyWithImpl<$Res>
    implements _$$_ResetPasswordEntityCopyWith<$Res> {
  __$$_ResetPasswordEntityCopyWithImpl(_$_ResetPasswordEntity _value,
      $Res Function(_$_ResetPasswordEntity) _then)
      : super(_value, (v) => _then(v as _$_ResetPasswordEntity));

  @override
  _$_ResetPasswordEntity get _value => super._value as _$_ResetPasswordEntity;

  @override
  $Res call({
    Object? token = freezed,
    Object? newPassword = freezed,
    Object? confirmPassword = freezed,
  }) {
    return _then(_$_ResetPasswordEntity(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResetPasswordEntity implements _ResetPasswordEntity {
  _$_ResetPasswordEntity(
      {@JsonKey(name: 'Token') this.token,
      @JsonKey(name: 'NewPassword') this.newPassword,
      @JsonKey(name: 'ConfirmPassword') this.confirmPassword});

  factory _$_ResetPasswordEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ResetPasswordEntityFromJson(json);

  @override
  @JsonKey(name: 'Token')
  final String? token;
  @override
  @JsonKey(name: 'NewPassword')
  final String? newPassword;
  @override
  @JsonKey(name: 'ConfirmPassword')
  final String? confirmPassword;

  @override
  String toString() {
    return 'ResetPasswordEntity(token: $token, newPassword: $newPassword, confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordEntity &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality()
                .equals(other.confirmPassword, confirmPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(confirmPassword));

  @JsonKey(ignore: true)
  @override
  _$$_ResetPasswordEntityCopyWith<_$_ResetPasswordEntity> get copyWith =>
      __$$_ResetPasswordEntityCopyWithImpl<_$_ResetPasswordEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResetPasswordEntityToJson(
      this,
    );
  }
}

abstract class _ResetPasswordEntity implements ResetPasswordEntity {
  factory _ResetPasswordEntity(
          {@JsonKey(name: 'Token') final String? token,
          @JsonKey(name: 'NewPassword') final String? newPassword,
          @JsonKey(name: 'ConfirmPassword') final String? confirmPassword}) =
      _$_ResetPasswordEntity;

  factory _ResetPasswordEntity.fromJson(Map<String, dynamic> json) =
      _$_ResetPasswordEntity.fromJson;

  @override
  @JsonKey(name: 'Token')
  String? get token;
  @override
  @JsonKey(name: 'NewPassword')
  String? get newPassword;
  @override
  @JsonKey(name: 'ConfirmPassword')
  String? get confirmPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordEntityCopyWith<_$_ResetPasswordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
