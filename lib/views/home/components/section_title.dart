import 'package:flutter/material.dart';

import '../../../config/resources.dart';
import '../../../config/size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Text(
      title,
      style: TextStyle(
        color: R.colors.mainTitleBlue,
        fontSize: defaultSize * 1.6,
      fontWeight: FontWeight.bold,
      ),
    );
  }
}
