import 'package:flutter/material.dart';
import 'package:weze/widgets/title_app_bar.dart';

import '../../config/resources.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: 'About Us'),
      backgroundColor: R.colors.greyScaffoldColor,
      body: Container(
        width: double.infinity,
        //  color: Colors.yellow,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      R.images.darkAppImage,
                      width: MediaQuery.of(context).size.width * 0.3,
                    ),
                    SizedBox(height: 30,),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                          ' sed do eiusmod tempor incididunt ut labore'
                          ' et dolore magna aliqua. Ut enim ad minim veniam',
                        style: TextStyle(fontSize: 13)
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                          ' sed do eiusmod tempor incididunt ut labore'
                          ' et dolore magna aliqua. Ut enim ad minim veniam',style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
            Text('v 0.0.1')
          ],
        ),
      ),
    );
  }
}
