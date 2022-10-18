// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_otp_model.freezed.dart';
part 'verification_otp_model.g.dart';

@freezed
class VerificationOtpModel with _$VerificationOtpModel {
  factory VerificationOtpModel({
    @JsonKey(name: 'reset_token') String? resetToken,
  }) = _VerificationOtpModel;

  factory VerificationOtpModel.fromJson(Map<String, dynamic> json) =>
      _$VerificationOtpModelFromJson(json);
}
