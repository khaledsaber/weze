import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weze/widgets/title_app_bar.dart';

import '../../config/resources.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: 'Messages'),
      backgroundColor: R.colors.greyScaffoldColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              MessagesListItem(
                name: 'Place short Name',
                message: 'Hey! How\'s it going?',
                unread: 1,
              ),
              SizedBox(
                height: 10,
              ),
              MessagesListItem(
                name: 'Place short Name',
                message: 'costs 350 ILS',
                unread: 3,
              ),
              SizedBox(
                height: 10,
              ),
              MessagesListItem(
                  name: 'Place short Name', message: 'Hey! How\'s it going?'),
              SizedBox(
                height: 10,
              ),
              MessagesListItem(
                name: 'Place short Name',
                message: 'How much this trip cost?',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessagesListItem extends StatelessWidget {
  const MessagesListItem({
    Key? key,
    required this.name,
    required this.message,
    this.unread = 0,
  }) : super(key: key);

  final String name, message;
  final int unread;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              // margin: const EdgeInsets.only(bottom: 20),
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                //    color: Colors.red,
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    R.images.onBoarding1,
                  ),
                ),
              ),
            ),
            if (unread > 0)
              Positioned(
                child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(color: R.colors.greyScaffoldColor),
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      unread.toString(),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  Text(
                    '04:04AM',
                    style: TextStyle(color: Color(0xffacb1c0)),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                message,
                style: TextStyle(
                  color:  Color(0xffacb1c0),
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ))
      ],
    );
  }
}
