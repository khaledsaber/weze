import 'package:flutter/material.dart';

class InterestsIntroText extends StatelessWidget {
  const InterestsIntroText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hello!',
            style: TextStyle(fontSize: 34, color: Color(0xff0a1f44)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Tell us a little bit about your interests, we can give you the most valuable experience',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 17,
              color: Color(0xff0a1f44),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'select 3 or more interests',
            style: TextStyle(
              fontSize: 15,
              color: Color(0xffacb1c0),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
