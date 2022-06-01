import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weze/views/splash/components/page_view_item.dart';

import '../../config/resources.dart';
import '../../config/size_config.dart';
import 'components/dash.dart';
import 'components/dash_line.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int currentPage = 0;

  List<Map<String, String>> intro = [
    {
      'image': 'assets/images/onBoarding1.png',
      'title': 'Discover',
      'subtitle': 'Find inspiration,explore fantastic destination from zoor'
    },
    {
      'image': 'assets/images/onBoarding2.png',
      'title': 'Plan your trip',
      'subtitle': 'Find inspiration,explore fantastic destination from zoor'
    },
    {
      'image': 'assets/images/onBoarding3.png',
      'title': 'Request trip',
      'subtitle': 'Find inspiration,explore fantastic destination from zoor'
    },
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //   color: Colors.green,
              width: double.infinity,
              height: SizeConfig.defaultSize * 50,
              // MediaQuery.of(context).size.height*0.8 ,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: intro.length,
                itemBuilder: (context, index) => PageViewItem(
                  image: intro[index]["image"]!,
                  title: intro[index]["title"]!,
                  subtitle: intro[index]["subtitle"]!,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DashLine(currentPage: currentPage),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(R.routes.loginScreen);
              },
              child: Text(
                'Skip',
                style: TextStyle(fontSize: SizeConfig.defaultSize * 1.6),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
