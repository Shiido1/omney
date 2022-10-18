import 'package:injectable/injectable.dart';
import 'package:omney/ui/screens/auth/email_verification/email_verification_model/email_verification_model.dart';
import 'package:omney/ui/screens/auth/email_verification/verification_entity/verification_entity.dart';
import 'package:omney/ui/screens/auth/forgot_password/forgot_password_entity/forgot_password_entity.dart';
import 'package:omney/ui/screens/auth/forgot_password/forgot_password_model/forgot_password_model.dart';
import 'package:omney/ui/screens/auth/forgot_password/verification_otp/verification_otp_model/verification_otp_model.dart';
import 'package:omney/ui/screens/auth/forgot_password/verification_otp/verification_otp_entity/verification_otp_entity.dart';
import 'package:omney/ui/screens/auth/get_started/sign_up_entity/sign_up_entity.dart';
import 'package:omney/ui/screens/auth/get_started/sign_up_model/sign_up_model.dart';
import 'package:omney/ui/screens/auth/login/login_model/login_model.dart';
import 'package:omney/ui/screens/auth/reset_password/reset_password_entity/reset_password_entity.dart';

import '../../../../../../core/core_folder/app/app.locator.dart';
import '../../../../../../core/core_folder/manager/session_manager.dart';
import '../../../ui/screens/auth/login/login_entity/login_entity.dart';
import '../../../ui/screens/auth/reset_password/rest_password_model/rest_password_model.dart';
import '../contracts/contract_impl.dart';
import 'repository.dart';

@lazySingleton
class AuthRepoImpl implements AuthRepo {
  final _session = locator<SharedPreferencesService>();
  final _contract = locator<AuthContractsImpl>();

  @override
  Future<LoginModel> login(LoginEntity entity) async {
    final response = await _contract.login(entity);
    _session.isLoggedIn = true;
    _chache(response);
    return response;
  }

  @override
  Future<SignUpModel> register(SignUpEntity entity) async {
    final response = await _contract.register(entity);
    // _chacheSignUp(response);
    return response;
  }

  void _chache(data) {
    if (data != null) {
      _session.authToken = data.token!;
      _session.usersData = data.toJson();
      _session.otpData = data.toJson();
    }
  }

  @override
  Future<ForgotPasswordModel> forgotPassword(
          ForgotPasswordEntity forgotPasswordEntity) async =>
      await _contract.forgotPassword(forgotPasswordEntity);

  @override
  Future<EmailVerificationModel> verifyOTP(
          VerificationEntity verificationEntity) async =>
      await _contract.verifyOTP(verificationEntity);

  @override
  Future<VerificationOtpModel> verifyPasswordOTP(
          VerificationOtpEntity verificationOtpEntity) async =>
      _contract.verifyPasswordOTP(verificationOtpEntity);

  @override
  Future<RestPasswordModel> resetPassword(ResetPasswordEntity entity) async =>
      await _contract.resetPassword(entity);
}
