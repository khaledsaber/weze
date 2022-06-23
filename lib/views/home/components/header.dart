import 'package:flutter/material.dart';

import '../../../config/resources.dart';
import '../../../config/size_config.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,

  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Row(
      children: [
        Image.asset(
          R.icons.location,
          width: defaultSize,
          color: Colors.black,
        ),
        SizedBox(
          width: defaultSize * 0.5,
        ),
        const Text('North region'),
        Expanded(child: Container()),
        Image.asset(
          R.icons.notificationBell,
          width: defaultSize * 5,
        ),
      ],
    );
  }
}
