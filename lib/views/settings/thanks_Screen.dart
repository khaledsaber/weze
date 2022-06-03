import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weze/widgets/footer_button.dart';

import '../../config/resources.dart';
import '../../config/size_config.dart';

class ThanksScreen extends StatelessWidget {
  const ThanksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: R.colors.greyScaffoldColor,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              Image.asset(
                R.images.like,
                width: 100,
              ),
              SizedBox(
                height: 30,
              ),
              const Text(
                'Thanks',
                style: TextStyle(fontSize: 47, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              Text('Our team will contact with you',style: TextStyle(fontSize: 18),),
              Text(
                ' ASAP to organize the trip with you',style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),

              Padding(
                padding:  EdgeInsets.symmetric(horizontal: defaultSize *6),
                child: FooterButton(title: 'Ok',radius: 28,),
              ),
              SizedBox(height: 50,),



            ],
          ),
        ),
      ),
    );
  }
}
