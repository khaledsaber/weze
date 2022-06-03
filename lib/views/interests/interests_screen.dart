import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weze/config/size_config.dart';

import '../../config/resources.dart';
import '../../widgets/footer_button.dart';
import 'components/interests_grid.dart';
import 'components/interests_grid_item.dart';
import 'components/interests_intro_text.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({Key? key}) : super(key: key);

  @override
  State<InterestsScreen> createState() => _InterestsScreenState();
}

class _InterestsScreenState extends State<InterestsScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ));

    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(
              left: defaultSize * 1.5,
              right: defaultSize * 1.5,
              top: defaultSize * 2,
              bottom: defaultSize * 2),
          // color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InterestsIntroText(),
              const Expanded(
                child: InterestsGrid(),
              ),
              SizedBox(height: 20,),
              FooterButton(title: 'Get Started',radius: 5,),
            ],
          ),
        ),
      ),
    );
  }
}

