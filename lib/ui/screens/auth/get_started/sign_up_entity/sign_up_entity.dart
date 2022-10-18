import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_entity.freezed.dart';
part 'sign_up_entity.g.dart';

@freezed
class SignUpEntity with _$SignUpEntity {
  factory SignUpEntity({
    @JsonKey(name: 'FirstName') String? firstName,
    @JsonKey(name: 'Surname') String? surname,
    @JsonKey(name: 'PhoneNumber') String? phoneNumber,
    @JsonKey(name: 'Gender') int? gender,
    @JsonKey(name: 'DateofBirth') String? dateofBirth,
    @JsonKey(name: 'ReferrerCode') String? referrerCode,
    @JsonKey(name: 'Password') String? password,
    @JsonKey(name: 'Email') String? email,
    @JsonKey(name: 'ConfirmPassword') String? confirmPassword,
    @JsonKey(name: 'NationalityId') String? nationalityId,
    @JsonKey(name: 'ChannelId') String? channelId,
    @JsonKey(name: 'CSCSNUmber') String? cscsnUmber,
    @JsonKey(name: 'DeviceToken') String? deviceToken,
    @JsonKey(name: 'MaidenName') String? maidenName,
    @JsonKey(name: 'Bvn') String? bvn,
  }) = _SignUpEntity;

  factory SignUpEntity.fromJson(Map<String, dynamic> json) =>
      _$SignUpEntityFromJson(json);
}
