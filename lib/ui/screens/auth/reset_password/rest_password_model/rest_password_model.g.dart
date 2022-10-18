// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_password_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RestPasswordModel _$$_RestPasswordModelFromJson(Map<String, dynamic> json) =>
    _$_RestPasswordModel(
      message: json['message'] as String?,
      errors: json['errors'],
    );

Map<String, dynamic> _$$_RestPasswordModelToJson(
        _$_RestPasswordModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
    };
