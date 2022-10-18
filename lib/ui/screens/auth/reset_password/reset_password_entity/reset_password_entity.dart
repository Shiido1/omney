import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_entity.freezed.dart';
part 'reset_password_entity.g.dart';

@freezed
class ResetPasswordEntity with _$ResetPasswordEntity {
  factory ResetPasswordEntity({
    @JsonKey(name: 'Token') String? token,
    @JsonKey(name: 'NewPassword') String? newPassword,
    @JsonKey(name: 'ConfirmPassword') String? confirmPassword,
  }) = _ResetPasswordEntity;

  factory ResetPasswordEntity.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordEntityFromJson(json);
}
