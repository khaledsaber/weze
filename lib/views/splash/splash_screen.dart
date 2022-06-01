import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weze/views/language/language_Screen.dart';
import '';
import '../../config/resources.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  void initState() {
    super.initState();
        Timer(const Duration(seconds: 2), () {
          Navigator.pushNamed(context, R.routes.languageRoue);

        });
  }



  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            R.images.spalshBackground,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Center(child: Image.asset(R.images.splashImage,width: MediaQuery.of(context).size.width*0.3,))
        ],
      ),
    );
  }
}
