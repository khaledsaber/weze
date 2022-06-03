import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weze/widgets/footer_button.dart';
import 'package:weze/widgets/title_app_bar.dart';

import '../../config/resources.dart';

class LinkedAccountScreen extends StatelessWidget {
  const LinkedAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: 'Linked Accounts'),
      backgroundColor: R.colors.greyScaffoldColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children:  [
                    Text(
                      'Instagram Link',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 50,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Instagram Link',
                        ),
                      ),
                    ),



                  ],
                ),
              ),
            ),
            FooterButton(
              title: 'Add',
              radius: 5,
            )
          ],
        ),
      ),
    );
  }
}
