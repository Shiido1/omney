// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForgotPasswordEntity _$ForgotPasswordEntityFromJson(Map<String, dynamic> json) {
  return _ForgotPasswordEntity.fromJson(json);
}

/// @nodoc
mixin _$ForgotPasswordEntity {
  @JsonKey(name: 'Email')
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForgotPasswordEntityCopyWith<ForgotPasswordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEntityCopyWith<$Res> {
  factory $ForgotPasswordEntityCopyWith(ForgotPasswordEntity value,
          $Res Function(ForgotPasswordEntity) then) =
      _$ForgotPasswordEntityCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'Email') String? email});
}

/// @nodoc
class _$ForgotPasswordEntityCopyWithImpl<$Res>
    implements $ForgotPasswordEntityCopyWith<$Res> {
  _$ForgotPasswordEntityCopyWithImpl(this._value, this._then);

  final ForgotPasswordEntity _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordEntity) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordEntityCopyWith<$Res>
    implements $ForgotPasswordEntityCopyWith<$Res> {
  factory _$$_ForgotPasswordEntityCopyWith(_$_ForgotPasswordEntity value,
          $Res Function(_$_ForgotPasswordEntity) then) =
      __$$_ForgotPasswordEntityCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'Email') String? email});
}

/// @nodoc
class __$$_ForgotPasswordEntityCopyWithImpl<$Res>
    extends _$ForgotPasswordEntityCopyWithImpl<$Res>
    implements _$$_ForgotPasswordEntityCopyWith<$Res> {
  __$$_ForgotPasswordEntityCopyWithImpl(_$_ForgotPasswordEntity _value,
      $Res Function(_$_ForgotPasswordEntity) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordEntity));

  @override
  _$_ForgotPasswordEntity get _value => super._value as _$_ForgotPasswordEntity;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_ForgotPasswordEntity(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForgotPasswordEntity implements _ForgotPasswordEntity {
  _$_ForgotPasswordEntity({@JsonKey(name: 'Email') this.email});

  factory _$_ForgotPasswordEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ForgotPasswordEntityFromJson(json);

  @override
  @JsonKey(name: 'Email')
  final String? email;

  @override
  String toString() {
    return 'ForgotPasswordEntity(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordEntity &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordEntityCopyWith<_$_ForgotPasswordEntity> get copyWith =>
      __$$_ForgotPasswordEntityCopyWithImpl<_$_ForgotPasswordEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForgotPasswordEntityToJson(
      this,
    );
  }
}

abstract class _ForgotPasswordEntity implements ForgotPasswordEntity {
  factory _ForgotPasswordEntity({@JsonKey(name: 'Email') final String? email}) =
      _$_ForgotPasswordEntity;

  factory _ForgotPasswordEntity.fromJson(Map<String, dynamic> json) =
      _$_ForgotPasswordEntity.fromJson;

  @override
  @JsonKey(name: 'Email')
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordEntityCopyWith<_$_ForgotPasswordEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
