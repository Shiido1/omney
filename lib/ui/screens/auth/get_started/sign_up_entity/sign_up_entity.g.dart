// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpEntity _$$_SignUpEntityFromJson(Map<String, dynamic> json) =>
    _$_SignUpEntity(
      firstName: json['FirstName'] as String?,
      surname: json['Surname'] as String?,
      phoneNumber: json['PhoneNumber'] as String?,
      gender: json['Gender'] as int?,
      dateofBirth: json['DateofBirth'] as String?,
      referrerCode: json['ReferrerCode'] as String?,
      password: json['Password'] as String?,
      email: json['Email'] as String?,
      confirmPassword: json['ConfirmPassword'] as String?,
      nationalityId: json['NationalityId'] as String?,
      channelId: json['ChannelId'] as String?,
      cscsnUmber: json['CSCSNUmber'] as String?,
      deviceToken: json['DeviceToken'] as String?,
      maidenName: json['MaidenName'] as String?,
      bvn: json['Bvn'] as String?,
    );

Map<String, dynamic> _$$_SignUpEntityToJson(_$_SignUpEntity instance) =>
    <String, dynamic>{
      'FirstName': instance.firstName,
      'Surname': instance.surname,
      'PhoneNumber': instance.phoneNumber,
      'Gender': instance.gender,
      'DateofBirth': instance.dateofBirth,
      'ReferrerCode': instance.referrerCode,
      'Password': instance.password,
      'Email': instance.email,
      'ConfirmPassword': instance.confirmPassword,
      'NationalityId': instance.nationalityId,
      'ChannelId': instance.channelId,
      'CSCSNUmber': instance.cscsnUmber,
      'DeviceToken': instance.deviceToken,
      'MaidenName': instance.maidenName,
      'Bvn': instance.bvn,
    };
