// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i12;
import 'package:flutter/material.dart';
import 'package:omney/ui/screens/app/dashboard/dashboard_view.dart' as _i4;
import 'package:omney/ui/screens/auth/email_verification/email_verification_screen.dart'
    as _i3;
import 'package:omney/ui/screens/auth/forgot_password/forgot_password.dart'
    as _i5;
import 'package:omney/ui/screens/auth/get_started/get_started_screen.dart'
    as _i8;
import 'package:omney/ui/screens/auth/get_started/welcome_screen.dart' as _i6;
import 'package:omney/ui/screens/auth/login/view/view/welcome_back_screen.dart'
    as _i7;
import 'package:omney/ui/screens/auth/reset_password/reset_password.dart'
    as _i10;
import 'package:omney/ui/screens/auth/reset_password/reset_password_screen.dart'
    as _i11;
import 'package:omney/ui/screens/auth/reset_password/success_screen.dart'
    as _i9;
import 'package:omney/ui/screens/onboarding/onboarding_screen.dart' as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i13;

class Routes {
  static const onBoardingPage = '/';

  static const emailVerificationScreen = '/email-verification-screen';

  static const dashboardView = '/dashboard-view';

  static const forgotPassword = '/forgot-password';

  static const welcomeScreen = '/welcome-screen';

  static const welcomeBackScreen = '/welcome-back-screen';

  static const getStartedScreen = '/get-started-screen';

  static const successScreen = '/success-screen';

  static const resetPassword = '/reset-password';

  static const resetPasswordScreen = '/reset-password-screen';

  static const all = <String>{
    onBoardingPage,
    emailVerificationScreen,
    dashboardView,
    forgotPassword,
    welcomeScreen,
    welcomeBackScreen,
    getStartedScreen,
    successScreen,
    resetPassword,
    resetPasswordScreen,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.onBoardingPage,
      page: _i2.OnBoardingPage,
    ),
    _i1.RouteDef(
      Routes.emailVerificationScreen,
      page: _i3.EmailVerificationScreen,
    ),
    _i1.RouteDef(
      Routes.dashboardView,
      page: _i4.DashboardView,
    ),
    _i1.RouteDef(
      Routes.forgotPassword,
      page: _i5.ForgotPassword,
    ),
    _i1.RouteDef(
      Routes.welcomeScreen,
      page: _i6.WelcomeScreen,
    ),
    _i1.RouteDef(
      Routes.welcomeBackScreen,
      page: _i7.WelcomeBackScreen,
    ),
    _i1.RouteDef(
      Routes.getStartedScreen,
      page: _i8.GetStartedScreen,
    ),
    _i1.RouteDef(
      Routes.successScreen,
      page: _i9.SuccessScreen,
    ),
    _i1.RouteDef(
      Routes.resetPassword,
      page: _i10.ResetPassword,
    ),
    _i1.RouteDef(
      Routes.resetPasswordScreen,
      page: _i11.ResetPasswordScreen,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.OnBoardingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i2.OnBoardingPage(),
        settings: data,
      );
    },
    _i3.EmailVerificationScreen: (data) {
      final args =
          data.getArgs<EmailVerificationScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i3.EmailVerificationScreen(
            otpString: args.otpString, key: args.key),
        settings: data,
      );
    },
    _i4.DashboardView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i4.DashboardView(),
        settings: data,
      );
    },
    _i5.ForgotPassword: (data) {
      final args = data.getArgs<ForgotPasswordArguments>(
        orElse: () => const ForgotPasswordArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i5.ForgotPassword(key: args.key),
        settings: data,
      );
    },
    _i6.WelcomeScreen: (data) {
      final args = data.getArgs<WelcomeScreenArguments>(
        orElse: () => const WelcomeScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i6.WelcomeScreen(key: args.key),
        settings: data,
      );
    },
    _i7.WelcomeBackScreen: (data) {
      final args = data.getArgs<WelcomeBackScreenArguments>(
        orElse: () => const WelcomeBackScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i7.WelcomeBackScreen(key: args.key),
        settings: data,
      );
    },
    _i8.GetStartedScreen: (data) {
      final args = data.getArgs<GetStartedScreenArguments>(
        orElse: () => const GetStartedScreenArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => _i8.GetStartedScreen(key: args.key),
        settings: data,
      );
    },
    _i9.SuccessScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const _i9.SuccessScreen(),
        settings: data,
      );
    },
    _i10.ResetPassword: (data) {
      final args = data.getArgs<ResetPasswordArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i10.ResetPassword(key: args.key, otpString: args.otpString),
        settings: data,
      );
    },
    _i11.ResetPasswordScreen: (data) {
      final args = data.getArgs<ResetPasswordScreenArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) =>
            _i11.ResetPasswordScreen(key: args.key, token: args.token),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;
  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class EmailVerificationScreenArguments {
  const EmailVerificationScreenArguments({
    required this.otpString,
    this.key,
  });

  final String otpString;

  final _i12.Key? key;
}

class ForgotPasswordArguments {
  const ForgotPasswordArguments({this.key});

  final _i12.Key? key;
}

class WelcomeScreenArguments {
  const WelcomeScreenArguments({this.key});

  final _i12.Key? key;
}

class WelcomeBackScreenArguments {
  const WelcomeBackScreenArguments({this.key});

  final _i12.Key? key;
}

class GetStartedScreenArguments {
  const GetStartedScreenArguments({this.key});

  final _i12.Key? key;
}

class ResetPasswordArguments {
  const ResetPasswordArguments({
    this.key,
    required this.otpString,
  });

  final _i12.Key? key;

  final String otpString;
}

class ResetPasswordScreenArguments {
  const ResetPasswordScreenArguments({
    this.key,
    required this.token,
  });

  final _i12.Key? key;

  final String token;
}

extension NavigatorStateExtension on _i13.NavigationService {
  Future<dynamic> navigateToOnBoardingPage([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.onBoardingPage,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToEmailVerificationScreen({
    required String otpString,
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.emailVerificationScreen,
        arguments:
            EmailVerificationScreenArguments(otpString: otpString, key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToDashboardView([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.dashboardView,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToForgotPassword({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.forgotPassword,
        arguments: ForgotPasswordArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWelcomeScreen({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.welcomeScreen,
        arguments: WelcomeScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToWelcomeBackScreen({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.welcomeBackScreen,
        arguments: WelcomeBackScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGetStartedScreen({
    _i12.Key? key,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.getStartedScreen,
        arguments: GetStartedScreenArguments(key: key),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToSuccessScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.successScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToResetPassword({
    _i12.Key? key,
    required String otpString,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.resetPassword,
        arguments: ResetPasswordArguments(key: key, otpString: otpString),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToResetPasswordScreen({
    _i12.Key? key,
    required String token,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.resetPasswordScreen,
        arguments: ResetPasswordScreenArguments(key: key, token: token),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
