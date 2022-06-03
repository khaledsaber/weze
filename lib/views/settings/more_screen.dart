import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weze/widgets/title_app_bar.dart';

import '../../config/resources.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(title: 'More'),
      backgroundColor: R.colors.greyScaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  buildRow(name: 'Account settings', src: R.icons.account),
                  const Divider(),
                  buildRow(name: 'My Trips', src: R.icons.trips),
                  const Divider(),
                  buildRow(name: 'My Favorites', src: R.icons.favorites),
                  const Divider(),
                  buildRow(name: 'Messages', src: R.icons.messages),
                  const Divider(),
                  buildRow(name: 'My Points', src: R.icons.Mypoints),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: [
                  buildText('About App'),
                  const Divider(),
                  buildText('Share App'),
                  const Divider(),
                  buildText('Contact Us'),
                  const Divider(),
                  buildText('Rate App'),

                ],
              ),
            ),
            const SizedBox(height: 10,),
             const Padding(
               padding: EdgeInsets.symmetric(horizontal: 20),
               child: Text('More Options',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,),),
             ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Language',
                    style: const TextStyle(fontSize: 17),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Text('English'),
                  SizedBox(width: 5,),
                  Image.asset(
                    R.icons.rightArrow,
                    width: 8,
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }

  Row buildText(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ],
    );
  }

  Row buildRow({required String name, required String src}) {
    return Row(
      children: [
        Image.asset(
          src,
          height: 30,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 17),
        ),
        Expanded(
          child: Container(),
        ),
        Image.asset(
          R.icons.rightArrow,
          width: 8,
        )
      ],
    );
  }
}
