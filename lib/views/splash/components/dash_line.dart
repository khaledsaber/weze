import 'package:flutter/material.dart';

import 'dash.dart';
class DashLine extends StatelessWidget {
  const DashLine({
    Key? key,
    required this.currentPage,
  }) : super(key: key);

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Dash(selected: currentPage==0? true:false,),
        SizedBox(
          width: 5,
        ),
        Dash(selected: currentPage==1? true:false,),
        SizedBox(
          width: 5,
        ),
        Dash(selected: currentPage==2? true:false,)
      ],
    );
  }
}



