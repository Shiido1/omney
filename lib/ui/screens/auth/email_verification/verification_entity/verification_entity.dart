// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_entity.freezed.dart';
part 'verification_entity.g.dart';

@freezed
class VerificationEntity with _$VerificationEntity {
  factory VerificationEntity({
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'OTP') String? otp,
  }) = _VerificationEntity;

  factory VerificationEntity.fromJson(Map<String, dynamic> json) =>
      _$VerificationEntityFromJson(json);
}
