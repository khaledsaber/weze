import 'package:flutter/material.dart';
import 'package:weze/views/category/category_Screen.dart';
import 'package:weze/views/favorites/favorites_screen.dart';
import 'package:weze/views/interests/interests_screen.dart';
import 'package:weze/views/language/language_Screen.dart';
import 'package:weze/views/login/login_screen.dart';
import 'package:weze/views/login/verification_screen.dart';
import 'package:weze/views/navigation/navigation_screen.dart';
import 'package:weze/views/notifications/notifications_screen.dart';
import 'package:weze/views/settings/about_us_screen.dart';
import 'package:weze/views/settings/account_settings_screen.dart';
import 'package:weze/views/settings/change_phone_screen.dart';
import 'package:weze/views/settings/contact_us_screen.dart';
import 'package:weze/views/settings/linked_account_screen.dart';
import 'package:weze/views/settings/messages_screen.dart';
import 'package:weze/views/settings/more_screen.dart';
import 'package:weze/views/settings/terms.dart';
import 'package:weze/views/settings/thanks_Screen.dart';
import 'package:weze/views/settings/user_points_screen.dart';
import 'package:weze/views/splash/on_boarding_screen.dart';
import 'package:weze/views/splash/splash_screen.dart';
import 'package:flutter/services.dart';
import 'config/resources.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.white, // status bar color
    // statusBarBrightness: Brightness.light,
    statusBarIconBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Colors.white,
    //   statusBarIconBrightness: Brightness.light,
    // ));

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home:  const NavigationScreen(),
      routes: {
        R.routes.languageRoue: (ctx) => const LanguageScreen(),
        R.routes.onBoarding: (ctx) => const OnBoardingScreen(),
        R.routes.loginScreen: (ctx) => const LoginScreen(),
        R.routes.verificationScreen: (ctx) => const VerificationScreen(),
        R.routes.interestsScreen: (ctx) => const InterestsScreen(),
        R.routes.notificationsScreen: (ctx) => const NotificationsScreen()
      },
    );
  }
}
