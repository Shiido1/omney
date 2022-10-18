// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, implementation_imports, depend_on_referenced_packages

import 'package:stacked_core/stacked_core.dart';
import 'package:stacked_services/src/dialog/dialog_service.dart';
import 'package:stacked_services/src/navigation/navigation_service.dart';
import 'package:stacked_services/src/snackbar/snackbar_service.dart';

import '../../api_folder/auth_api.dart';
import '../../middle_ware/contracts/contract_impl.dart';
import '../../middle_ware/repository/repository_impl.dart';
import '../../middle_ware/view_model.dart';
import '../manager/session_manager.dart';
import '../network/networt_service.dart';

final locator = StackedLocator.instance;

Future<void> setupLocator(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => SnackbarService());
  locator.registerLazySingleton(() => SharedPreferencesService());
  locator.registerLazySingleton(() => NetworkService());
  locator.registerLazySingleton(() => AuthApi());
  locator.registerLazySingleton(() => AuthContractsImpl());
  locator.registerLazySingleton(() => AuthRepoImpl());
  locator.registerLazySingleton(() => ViewModel());
}
