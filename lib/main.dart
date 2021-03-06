import 'package:flutter/material.dart';
import 'package:fresh_fruits/screens/categories_screen.dart';
import 'package:fresh_fruits/screens/check_out_screen.dart';
import 'package:fresh_fruits/screens/create_account_screen.dart';
import 'package:fresh_fruits/screens/nav_screen.dart';
import 'package:fresh_fruits/screens/login_screen.dart';
import 'package:fresh_fruits/screens/onboarding_screen.dart';
import 'package:fresh_fruits/screens/splash_screen.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
        builder: (context) => MyApp())
  );
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        'OnBoardingScreen': (context) => OnBoardingScreen(),
        'CreateAccountScreen': (context) => CreateAccountScreen(),
        'LoginScreen' : (context) => LoginScreen(),
        'NavScreen': (context) => NavScreen(),
        'CheckoutScreen': (context) => CheckOutScreen()
      },
    );
  }
}

