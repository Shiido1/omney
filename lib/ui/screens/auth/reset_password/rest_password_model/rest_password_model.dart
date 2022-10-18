import 'package:freezed_annotation/freezed_annotation.dart';

part 'rest_password_model.freezed.dart';
part 'rest_password_model.g.dart';

@freezed
class RestPasswordModel with _$RestPasswordModel {
  factory RestPasswordModel({
    String? message,
    dynamic errors,
  }) = _RestPasswordModel;

  factory RestPasswordModel.fromJson(Map<String, dynamic> json) =>
      _$RestPasswordModelFromJson(json);
}
