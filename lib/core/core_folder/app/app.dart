import 'package:omney/ui/screens/auth/email_verification/email_verification_screen.dart';
import 'package:omney/ui/screens/auth/forgot_password/forgot_password.dart';
import 'package:omney/ui/screens/auth/get_started/get_started_screen.dart';
import 'package:omney/ui/screens/auth/get_started/welcome_screen.dart';
import 'package:omney/ui/screens/auth/reset_password/reset_password.dart';
import 'package:omney/ui/screens/auth/reset_password/reset_password_screen.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../ui/screens/app/dashboard/dashboard_view.dart';
import '../../../ui/screens/auth/login/view/view/welcome_back_screen.dart';
import '../../../ui/screens/auth/reset_password/success_screen.dart';
import '../../../ui/screens/onboarding/onboarding_screen.dart';
import '../../api_folder/auth_api.dart';
import '../../middle_ware/contracts/contract_impl.dart';
import '../../middle_ware/repository/repository_impl.dart';
import '../../middle_ware/view_model.dart';
import '../manager/session_manager.dart';
import '../network/networt_service.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: OnBoardingPage, initial: true),
    MaterialRoute(page: EmailVerificationScreen, initial: false),
    MaterialRoute(page: DashboardView, initial: false),
    MaterialRoute(page: ForgotPassword, initial: false),
    MaterialRoute(page: WelcomeScreen, initial: false),
    MaterialRoute(page: WelcomeBackScreen, initial: false),
    MaterialRoute(page: GetStartedScreen, initial: false),
    MaterialRoute(page: SuccessScreen, initial: false),
    MaterialRoute(page: ResetPassword, initial: false),
    MaterialRoute(page: ResetPasswordScreen, initial: false),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: SharedPreferencesService),
    LazySingleton(classType: NetworkService),
    LazySingleton(classType: AuthApi),
    LazySingleton(classType: AuthContractsImpl),
    LazySingleton(classType: AuthRepoImpl),
    LazySingleton(classType: ViewModel),
  ],
  logger: StackedLogger(),
)
class App {}
