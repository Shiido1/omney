// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_entity.freezed.dart';
part 'forgot_password_entity.g.dart';

@freezed
class ForgotPasswordEntity with _$ForgotPasswordEntity {
  factory ForgotPasswordEntity({
    @JsonKey(name: 'Email') String? email,
  }) = _ForgotPasswordEntity;

  factory ForgotPasswordEntity.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordEntityFromJson(json);
}
