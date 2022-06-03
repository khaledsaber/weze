import 'package:flutter/material.dart';
import 'package:weze/widgets/title_app_bar.dart';

import '../../config/resources.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(title: 'Terms & Conditions'),
      backgroundColor: R.colors.greyScaffoldColor,
      body: SingleChildScrollView(
        child: Text('should provide a pdf of terms and conditions here '),
      ),
    );
  }
}
