import 'package:flutter/material.dart';

class NotificationsListItem extends StatelessWidget {
  const NotificationsListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            width: 60,
            height: 60,
            //color: Colors.red,
            child: const CircleAvatar(),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Ibrahim liked your photo',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  '2 hours ago',
                  style: TextStyle(color: Color(0xffacb1c0), fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
