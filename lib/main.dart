import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:omney/core/core_folder/app/app.router.dart';
import 'package:omney/core/global_var.dart';
import 'package:stacked_services/stacked_services.dart';
import 'core/core_folder/app/app.locator.dart';

final navigate = locator<NavigationService>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    getDeviceToken();
    super.initState();
  }

  getDeviceToken() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    BaseDeviceInfo? deviceInfo;
    AndroidDeviceInfo? deviceInfo1;
    if (Platform.isIOS) {
      deviceInfo = await deviceInfoPlugin.deviceInfo;
    } else {
      deviceInfo1 = await deviceInfoPlugin.androidInfo;
    }
    final map = deviceInfo?.toMap();
    final map1 = deviceInfo1?.toMap();
    setState(() {
      deviceToken = map?['identifierForVendor'];
      deviceTokenAndroid = map1?['id'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
