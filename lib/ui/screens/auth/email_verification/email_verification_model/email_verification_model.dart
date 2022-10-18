import 'package:freezed_annotation/freezed_annotation.dart';

part 'email_verification_model.freezed.dart';
part 'email_verification_model.g.dart';

@freezed
class EmailVerificationModel with _$EmailVerificationModel {
  factory EmailVerificationModel({
    String? token,
    String? refreshToken,
  }) = _EmailVerificationModel;

  factory EmailVerificationModel.fromJson(Map<String, dynamic> json) =>
      _$EmailVerificationModelFromJson(json);
}
