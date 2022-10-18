import 'package:omney/ui/screens/auth/email_verification/verification_entity/verification_entity.dart';
import 'package:omney/ui/screens/auth/forgot_password/forgot_password_entity/forgot_password_entity.dart';
import 'package:omney/ui/screens/auth/forgot_password/forgot_password_model/forgot_password_model.dart';
import 'package:omney/ui/screens/auth/forgot_password/verification_otp/verification_otp_entity/verification_otp_entity.dart';
import 'package:omney/ui/screens/auth/forgot_password/verification_otp/verification_otp_model/verification_otp_model.dart';
import 'package:omney/ui/screens/auth/get_started/sign_up_entity/sign_up_entity.dart';
import 'package:omney/ui/screens/auth/get_started/sign_up_model/sign_up_model.dart';
import 'package:omney/ui/screens/auth/login/login_model/login_model.dart';
import 'package:omney/ui/screens/auth/reset_password/reset_password_entity/reset_password_entity.dart';
import '../../../ui/screens/auth/email_verification/email_verification_model/email_verification_model.dart';
import '../../../ui/screens/auth/login/login_entity/login_entity.dart';
import '../../../ui/screens/auth/reset_password/rest_password_model/rest_password_model.dart';

abstract class AuthRepo {
  Future<SignUpModel> register(SignUpEntity entity);
  Future<LoginModel> login(LoginEntity entity);
  Future<ForgotPasswordModel> forgotPassword(
      ForgotPasswordEntity forgotPasswordEntity);
  Future<EmailVerificationModel> verifyOTP(
      VerificationEntity verificationEntity);
  Future<VerificationOtpModel> verifyPasswordOTP(
      VerificationOtpEntity verificationEntity);
  Future<RestPasswordModel> resetPassword(ResetPasswordEntity entity);
}
