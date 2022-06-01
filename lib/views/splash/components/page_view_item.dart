import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weze/config/size_config.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image,
            width: double.infinity,
            fit: BoxFit.fill,
            height: SizeConfig.defaultSize *
                38 // MediaQuery.of(context).size.height * 0.6,
            ),
        const SizedBox(
          height: 30,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: SizeConfig.defaultSize * 3,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize* 4),
          child: Text(
            subtitle,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: SizeConfig.defaultSize* 1.5,color: Color(0xff9ca0bc)),
          ),
        ),
      ],
    );
  }
}
