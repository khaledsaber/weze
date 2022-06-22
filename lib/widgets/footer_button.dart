import 'package:flutter/material.dart';

import '../config/resources.dart';
import '../config/size_config.dart';

class FooterButton extends StatelessWidget {
  const FooterButton({
    Key? key,
    required this.title,
    this.radius = 0,  this.VoidCallback,
  }) : super(key: key);

  final String title;
  final double radius;
  final VoidCallback;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          fixedSize: Size(MediaQuery.of(context).size.width, 50),
          primary: R.colors.buttonBlueColor),
      onPressed: VoidCallback ,
      child: Text(
        title,
        style: TextStyle(fontSize: defaultSize * 1.5),
      ),
    );
  }
}
