// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpModel _$SignUpModelFromJson(Map<String, dynamic> json) {
  return _SignUpModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpModel {
  @JsonKey(name: 'otpID')
  int? get otpId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpModelCopyWith<SignUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpModelCopyWith<$Res> {
  factory $SignUpModelCopyWith(
          SignUpModel value, $Res Function(SignUpModel) then) =
      _$SignUpModelCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'otpID') int? otpId});
}

/// @nodoc
class _$SignUpModelCopyWithImpl<$Res> implements $SignUpModelCopyWith<$Res> {
  _$SignUpModelCopyWithImpl(this._value, this._then);

  final SignUpModel _value;
  // ignore: unused_field
  final $Res Function(SignUpModel) _then;

  @override
  $Res call({
    Object? otpId = freezed,
  }) {
    return _then(_value.copyWith(
      otpId: otpId == freezed
          ? _value.otpId
          : otpId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_SignUpModelCopyWith<$Res>
    implements $SignUpModelCopyWith<$Res> {
  factory _$$_SignUpModelCopyWith(
          _$_SignUpModel value, $Res Function(_$_SignUpModel) then) =
      __$$_SignUpModelCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'otpID') int? otpId});
}

/// @nodoc
class __$$_SignUpModelCopyWithImpl<$Res> extends _$SignUpModelCopyWithImpl<$Res>
    implements _$$_SignUpModelCopyWith<$Res> {
  __$$_SignUpModelCopyWithImpl(
      _$_SignUpModel _value, $Res Function(_$_SignUpModel) _then)
      : super(_value, (v) => _then(v as _$_SignUpModel));

  @override
  _$_SignUpModel get _value => super._value as _$_SignUpModel;

  @override
  $Res call({
    Object? otpId = freezed,
  }) {
    return _then(_$_SignUpModel(
      otpId: otpId == freezed
          ? _value.otpId
          : otpId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpModel implements _SignUpModel {
  _$_SignUpModel({@JsonKey(name: 'otpID') this.otpId});

  factory _$_SignUpModel.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpModelFromJson(json);

  @override
  @JsonKey(name: 'otpID')
  final int? otpId;

  @override
  String toString() {
    return 'SignUpModel(otpId: $otpId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpModel &&
            const DeepCollectionEquality().equals(other.otpId, otpId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(otpId));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpModelCopyWith<_$_SignUpModel> get copyWith =>
      __$$_SignUpModelCopyWithImpl<_$_SignUpModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpModelToJson(
      this,
    );
  }
}

abstract class _SignUpModel implements SignUpModel {
  factory _SignUpModel({@JsonKey(name: 'otpID') final int? otpId}) =
      _$_SignUpModel;

  factory _SignUpModel.fromJson(Map<String, dynamic> json) =
      _$_SignUpModel.fromJson;

  @override
  @JsonKey(name: 'otpID')
  int? get otpId;
  @override
  @JsonKey(ignore: true)
  _$$_SignUpModelCopyWith<_$_SignUpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
