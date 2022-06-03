import 'package:flutter/material.dart';

import '../../config/resources.dart';
import '../../config/size_config.dart';
import '../../widgets/title_app_bar.dart';
import '../category/components/category_list_item.dart';

class UserFavoritesScreen extends StatelessWidget {
  const UserFavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;

    return Scaffold(
      appBar: const TitleAppBar(
        title: 'My Favorites',
      ),
      backgroundColor: R.colors.greyScaffoldColor,
      body: Container(
        padding: EdgeInsets.all(defaultSize * 2),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) =>
              CategoryListItem(index: index, selected: true),
        ),
      ),
    );
  }
}
