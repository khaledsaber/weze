import 'package:flutter/material.dart';
import 'package:weze/views/language/language_Screen.dart';
import 'package:weze/views/login/login_screen.dart';
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
        primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        R.routes.languageRoue: (ctx) => const LanguageScreen(),
        R.routes.onBoarding:(ctx)=> const OnBoardingScreen(),
        R.routes.loginScreen:(ctx)=>const LoginScreen(
        )
      },
    );
  }
}
