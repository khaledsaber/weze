import 'package:flutter/material.dart';

import '../../config/resources.dart';
import '../../config/size_config.dart';
import '../notifications/components/notifications_list_item.dart';
import 'components/category_list_item.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          color: Colors.black,
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              R.icons.filter,
//              color: Colors.black,
              width: 20,
            ),
          )
        ],
      ),
      backgroundColor: R.colors.greyScaffoldColor,
      body: Container(
        padding: EdgeInsets.all(defaultSize * 2),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) =>
              CategoryListItem(index: index, selected: false),
        ),
      ),
    );
  }
}
