// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResetPasswordEntity _$$_ResetPasswordEntityFromJson(
        Map<String, dynamic> json) =>
    _$_ResetPasswordEntity(
      token: json['Token'] as String?,
      newPassword: json['NewPassword'] as String?,
      confirmPassword: json['ConfirmPassword'] as String?,
    );

Map<String, dynamic> _$$_ResetPasswordEntityToJson(
        _$_ResetPasswordEntity instance) =>
    <String, dynamic>{
      'Token': instance.token,
      'NewPassword': instance.newPassword,
      'ConfirmPassword': instance.confirmPassword,
    };
