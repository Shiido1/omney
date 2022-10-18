// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_verification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailVerificationModel _$EmailVerificationModelFromJson(
    Map<String, dynamic> json) {
  return _EmailVerificationModel.fromJson(json);
}

/// @nodoc
mixin _$EmailVerificationModel {
  String? get token => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailVerificationModelCopyWith<EmailVerificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerificationModelCopyWith<$Res> {
  factory $EmailVerificationModelCopyWith(EmailVerificationModel value,
          $Res Function(EmailVerificationModel) then) =
      _$EmailVerificationModelCopyWithImpl<$Res>;
  $Res call({String? token, String? refreshToken});
}

/// @nodoc
class _$EmailVerificationModelCopyWithImpl<$Res>
    implements $EmailVerificationModelCopyWith<$Res> {
  _$EmailVerificationModelCopyWithImpl(this._value, this._then);

  final EmailVerificationModel _value;
  // ignore: unused_field
  final $Res Function(EmailVerificationModel) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_EmailVerificationModelCopyWith<$Res>
    implements $EmailVerificationModelCopyWith<$Res> {
  factory _$$_EmailVerificationModelCopyWith(_$_EmailVerificationModel value,
          $Res Function(_$_EmailVerificationModel) then) =
      __$$_EmailVerificationModelCopyWithImpl<$Res>;
  @override
  $Res call({String? token, String? refreshToken});
}

/// @nodoc
class __$$_EmailVerificationModelCopyWithImpl<$Res>
    extends _$EmailVerificationModelCopyWithImpl<$Res>
    implements _$$_EmailVerificationModelCopyWith<$Res> {
  __$$_EmailVerificationModelCopyWithImpl(_$_EmailVerificationModel _value,
      $Res Function(_$_EmailVerificationModel) _then)
      : super(_value, (v) => _then(v as _$_EmailVerificationModel));

  @override
  _$_EmailVerificationModel get _value =>
      super._value as _$_EmailVerificationModel;

  @override
  $Res call({
    Object? token = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$_EmailVerificationModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailVerificationModel implements _EmailVerificationModel {
  _$_EmailVerificationModel({this.token, this.refreshToken});

  factory _$_EmailVerificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_EmailVerificationModelFromJson(json);

  @override
  final String? token;
  @override
  final String? refreshToken;

  @override
  String toString() {
    return 'EmailVerificationModel(token: $token, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailVerificationModel &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(refreshToken));

  @JsonKey(ignore: true)
  @override
  _$$_EmailVerificationModelCopyWith<_$_EmailVerificationModel> get copyWith =>
      __$$_EmailVerificationModelCopyWithImpl<_$_EmailVerificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailVerificationModelToJson(
      this,
    );
  }
}

abstract class _EmailVerificationModel implements EmailVerificationModel {
  factory _EmailVerificationModel(
      {final String? token,
      final String? refreshToken}) = _$_EmailVerificationModel;

  factory _EmailVerificationModel.fromJson(Map<String, dynamic> json) =
      _$_EmailVerificationModel.fromJson;

  @override
  String? get token;
  @override
  String? get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_EmailVerificationModelCopyWith<_$_EmailVerificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
