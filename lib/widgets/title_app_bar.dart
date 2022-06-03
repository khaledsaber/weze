import 'package:flutter/material.dart';

import '../config/resources.dart';

class TitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const TitleAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: TextStyle(color: R.colors.mainTitleBlue),
      ),
      leading: IconButton(
        color: Colors.black,
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
