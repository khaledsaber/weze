import 'package:flutter/material.dart';

import '../../../config/size_config.dart';

class Dash extends StatelessWidget {
  const Dash({
    Key? key, this.selected = false,
  }) : super(key: key);

  final bool selected;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.defaultSize * 2,
      height: SizeConfig.defaultSize * 0.3,
      decoration: BoxDecoration(
        color:  selected?  Color(0xff1fbec9):Colors.black.withOpacity(0.2),
        borderRadius: BorderRadius.circular(1.5),
      ),
    );
  }
}