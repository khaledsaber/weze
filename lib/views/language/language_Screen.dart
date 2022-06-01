import 'package:flutter/material.dart';
import 'package:weze/config/size_config.dart';

import '../../config/resources.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  bool isEnglish = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        //   alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              R.images.languageFooter,
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomLeft,
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.13,
                  ),
                  Image.asset(
                    R.images.language,
                    width: SizeConfig.defaultSize * 16,
                    height: SizeConfig.defaultSize * 10,
                  ),
                  const SizedBox(height: 50 //SizeConfig.defaultSize * 5,
                      ),
                  Text(
                    'Choose Language'.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.defaultSize * 2.2,
                      color: const Color(0xff05123e),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Choose your favorite language',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.defaultSize * 1.8,
                      color: const Color(0xff7a8fa6),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xffe6e6e6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text('English'),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                              child: Container(
                            child: Text('عربي'),
                          )),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, R.routes.loginScreen);
                    },
                    child: const Text('OK'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        fixedSize: const Size(250, 50),
                        primary: const Color(0xff3f44dc)),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
