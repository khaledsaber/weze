import 'package:flutter/material.dart';
import 'package:weze/config/size_config.dart';

import 'home_category_list_item.dart';

class HomeCategriesList extends StatelessWidget {
   HomeCategriesList({
    Key? key,
  }) : super(key: key);

  List<Map<String, dynamic>> categories = [
    {
      'image': 'assets/images/masarat_categ.png',
      'title': 'Masarat',
      'selected': false,
    },
    {
      'image': 'assets/images/trips.png',
      'title': 'Trips',
      'selected': false,
    },
    {
      'image': 'assets/images/beaches_categ.png',
      'title': 'Beaches',
      'selected': false,
    },
    {
      'image': 'assets/images/valley_categ.png',
      'title': 'Valley',
      'selected': false,
    },
    {
      'image': 'assets/images/overlocked.png',
      'title': 'Overlocked',
      'selected': false,
    },
    {
      'image': 'assets/images/events.png',
      'title': 'Events',
      'selected': false,
    },
    {
      'image': 'assets/images/resort.png',
      'title': 'Resorts',
      'selected': false,
    },
    {
      'image': 'assets/images/romances.png',
      'title': 'Romances',
      'selected': false,
    },
  ];


  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      child: SizedBox(
        height: defaultSize * 5,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => HomeCategoryListItem(
            image: categories[index]['image'],
            title: categories[index]['title'],
            selected: categories[index]['selected'],
          ),
        ),
      ),
    );
  }
}
