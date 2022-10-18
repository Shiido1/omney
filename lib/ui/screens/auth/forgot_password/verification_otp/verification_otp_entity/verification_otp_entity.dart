// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_otp_entity.freezed.dart';
part 'verification_otp_entity.g.dart';

@freezed
class VerificationOtpEntity with _$VerificationOtpEntity {
  factory VerificationOtpEntity({
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'OTP') String? otp,
  }) = _VerificationOtpEntity;

  factory VerificationOtpEntity.fromJson(Map<String, dynamic> json) =>
      _$VerificationOtpEntityFromJson(json);
}
