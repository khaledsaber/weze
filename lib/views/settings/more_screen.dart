import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weze/widgets/title_app_bar.dart';

import '../../config/resources.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

  bool on = false;

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
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Dark mode',
                    style: TextStyle(fontSize: 17),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  CupertinoSwitch(onChanged: (val){
                    setState(() {
                      on = val;
                    });
                  }, value: on,),
                  const SizedBox(width: 5,),

                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Language',
                    style: TextStyle(fontSize: 17),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  const Text('English'),
                  const SizedBox(width: 5,),
                  Image.asset(
                    R.icons.rightArrow,
                    width: 8,
                  )
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Linked Accounts',
                    style: TextStyle(fontSize: 17),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  const Text('Instagram'),
                  const SizedBox(width: 5,),
                  Image.asset(
                    R.icons.rightArrow,
                    width: 8,
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),

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
