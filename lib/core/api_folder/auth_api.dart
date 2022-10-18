import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:omney/ui/screens/auth/forgot_password/forgot_password_model/forgot_password_model.dart';
import 'package:omney/ui/screens/auth/forgot_password/verification_otp/verification_otp_entity/verification_otp_entity.dart';
import 'package:omney/ui/screens/auth/forgot_password/verification_otp/verification_otp_model/verification_otp_model.dart';
import 'package:omney/ui/screens/auth/get_started/sign_up_entity/sign_up_entity.dart';
import 'package:omney/ui/screens/auth/get_started/sign_up_model/sign_up_model.dart';
import 'package:omney/ui/screens/auth/reset_password/reset_password_entity/reset_password_entity.dart';

import '../../ui/screens/auth/email_verification/email_verification_model/email_verification_model.dart';
import '../../ui/screens/auth/email_verification/verification_entity/verification_entity.dart';
import '../../ui/screens/auth/forgot_password/forgot_password_entity/forgot_password_entity.dart';
import '../../ui/screens/auth/login/login_entity/login_entity.dart';
import '../../ui/screens/auth/login/login_model/login_model.dart';
import '../../ui/screens/auth/reset_password/rest_password_model/rest_password_model.dart';
import '../core_folder/app/app.locator.dart';
import '../core_folder/network/networt_service.dart';
import '../core_folder/network/url_path.dart';

@lazySingleton
class AuthApi {
  final _service = locator<NetworkService>();

  Future<SignUpModel> register(SignUpEntity signUpEntity) async {
    try {
      final response = await _service.call(
          UrlConfig.register, RequestMethod.post,
          data: signUpEntity.toJson());
      return SignUpModel.fromJson(response.data);
    } catch (e) {
      rethrow;
    }
  }

  Future<LoginModel> login(LoginEntity entity) async {
    try {
      final response = await _service.call(UrlConfig.login, RequestMethod.post,
          data: entity.toJson());
      return LoginModel.fromJson(response.data);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<EmailVerificationModel> verifyOTP(
      VerificationEntity verificationEntity) async {
    try {
      final response = await _service.call(UrlConfig.verify, RequestMethod.post,
          data: verificationEntity.toJson());
      return EmailVerificationModel.fromJson(response.data);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<ForgotPasswordModel> forgotPassword(
      ForgotPasswordEntity forgotPasswordEntity) async {
    try {
      final response = await _service.call(
          UrlConfig.forgotPassowrd, RequestMethod.post,
          data: forgotPasswordEntity.toJson());
      return ForgotPasswordModel.fromJson(response.data);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<VerificationOtpModel> verifyPasswordOTP(
      VerificationOtpEntity verificationOtpEntity) async {
    try {
      final response = await _service.call(
          UrlConfig.forgotPassowrdVerification, RequestMethod.post,
          data: verificationOtpEntity.toJson());
      return VerificationOtpModel.fromJson(response.data);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  Future<RestPasswordModel> resetPassword(
      ResetPasswordEntity resetPasswordEntity) async {
    try {
      final response = await _service.call(
          UrlConfig.resetPassword, RequestMethod.post,
          data: resetPasswordEntity.toJson());
      return RestPasswordModel.fromJson(response.data);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
