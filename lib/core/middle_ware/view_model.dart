import 'package:flutter/material.dart';
import 'package:omney/core/core_folder/app/app.router.dart';
import 'package:omney/core/global_var.dart';
import 'package:omney/core/middle_ware/repository/repository_impl.dart';
import 'package:omney/ui/screens/auth/email_verification/verification_entity/verification_entity.dart';
import 'package:omney/ui/screens/auth/forgot_password/forgot_password_entity/forgot_password_entity.dart';
import 'package:omney/ui/screens/auth/reset_password/reset_password_entity/reset_password_entity.dart';
import 'package:stacked/stacked.dart';
import '../../main.dart';
import '../../ui/screens/auth/forgot_password/forgot_password_model/forgot_password_model.dart';
import '../../ui/screens/auth/forgot_password/verification_otp/verification_otp_entity/verification_otp_entity.dart';
import '../../ui/screens/auth/forgot_password/verification_otp/verification_otp_model/verification_otp_model.dart';
import '../../ui/screens/auth/get_started/sign_up_entity/sign_up_entity.dart';
import '../../ui/screens/auth/get_started/sign_up_model/sign_up_model.dart';
import '../../ui/screens/auth/login/login_entity/login_entity.dart';
import '../../ui/utils/utils/AppUtils.dart';
import '../core_folder/app/app.logger.dart';

class ViewModel extends BaseViewModel {
  final BuildContext? context;
  final logger = getLogger('ViewModel');

  ViewModel({this.context});

  final repositoryImply = AuthRepoImpl();

  SignUpModel? _signUpModel;
  ForgotPasswordModel? _otpModel;
  VerificationOtpModel? _verificationOtpModel;
  bool get is8characters => _is8characters;
  bool _is8characters = false;
  bool get isUpperCase => _isUpperCase;
  bool _isUpperCase = false;
  bool get isSpecialCharacters => _isSpecialCharacters;
  bool _isSpecialCharacters = false;
  bool get isNumber => _isNumber;
  bool _isNumber = false;
  bool get isPasswordVisible => _isPasswordVisible;
  bool _isPasswordVisible = true;

  final formKey = GlobalKey<FormState>();

  void toggleVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }

  Future<void> loginUser(LoginEntity entity, contxt) async {
    try {
      await runBusyFuture(repositoryImply.login(entity), throwException: true);
      await navigate.replaceWith(Routes.dashboardView);
    } catch (e) {
      AppUtils.snackbar(contxt, message: e.toString(), error: true);
    }
  }

  Future<void> signUpUser(SignUpEntity entity, contxt) async {
    try {
      _signUpModel = await runBusyFuture(repositoryImply.register(entity),
          throwException: true);
      await navigate.replaceWith(Routes.emailVerificationScreen,
          arguments: EmailVerificationScreenArguments(
              otpString: _signUpModel!.otpId.toString()));
      await AppUtils.snackbar(contxt, message: 'Successful');
    } catch (e) {
      AppUtils.snackbar(contxt, message: e.toString(), error: true);
    }
  }

  Future<void> verifyOTP(VerificationEntity verificationEntity, contxt) async {
    try {
      await runBusyFuture(repositoryImply.verifyOTP(verificationEntity),
          throwException: true);
      await navigate.clearStackAndShow(Routes.dashboardView);
    } catch (e) {
      AppUtils.snackbar(contxt, message: e.toString(), error: true);
    }
  }

  Future<void> verifyPasswordOTP(
      VerificationOtpEntity verificationOtpEntity, contxt) async {
    try {
      _verificationOtpModel = await runBusyFuture(
          repositoryImply.verifyPasswordOTP(verificationOtpEntity),
          throwException: true);
      await navigate.clearStackAndShow(Routes.resetPasswordScreen,
          arguments: ResetPasswordScreenArguments(
              token: _verificationOtpModel!.resetToken!));
    } catch (e) {
      AppUtils.snackbar(contxt, message: e.toString(), error: true);
    }
  }

  Future<void> forgotpasword(
      {ForgotPasswordEntity? forgotPasswordEntity, contxt}) async {
    try {
      _otpModel = await runBusyFuture(
          repositoryImply.forgotPassword(forgotPasswordEntity!),
          throwException: true);
      await navigate.replaceWith(Routes.resetPassword,
          arguments:
              ResetPasswordArguments(otpString: _otpModel!.otpId.toString()));
    } catch (e) {
      print('object $e');
      // AppUtils.snackbar(contxt, message: e.toString(), error: true);
    }
  }

  Future<void> resetPassword(
      {ResetPasswordEntity? resetPasswordEntity, context}) async {
    try {
      await runBusyFuture(repositoryImply.resetPassword(resetPasswordEntity!),
          throwException: true);
      await navigate.replaceWith(Routes.dashboardView);
    } catch (e) {
      AppUtils.snackbar(context, message: e.toString(), error: true);
    }
  }

  validPhoneNumber(String value) {
    if (value.startsWith("0")) {
      phoneNumber = value.substring(1);
      notifyListeners();
    }
  }

  validatePassword(String password) {
    if (password.length >= 8) {
      _is8characters = true;
    } else {
      _is8characters = false;
    }
    if (password.contains(RegExp("(?:[ ^A-Z]*[A-Z]){1}"))) {
      _isUpperCase = true;
    } else {
      _isUpperCase = false;
    }
    if (password.contains(RegExp(r'[0-9]'))) {
      _isNumber = true;
    } else {
      _isNumber = false;
    }
    if (password.contains(RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'))) {
      _isSpecialCharacters = true;
    } else {
      _isSpecialCharacters = false;
    }
    notifyListeners();
  }
}
