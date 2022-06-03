import 'package:flutter/material.dart';

import 'interests_grid_item.dart';

class InterestsGrid extends StatefulWidget {
  const InterestsGrid({
    Key? key,
  }) : super(key: key);

  @override
  State<InterestsGrid> createState() => _InterestsGridState();
}

class _InterestsGridState extends State<InterestsGrid> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> intersts = [
      {
        'image': 'assets/images/masarat.png',
        'title': 'Masarat',
        'selected': false,
      },
      {
        'image': 'assets/images/trees.png',
        'title': 'Trees',
        'selected': false,
      },
      {
        'image': 'assets/images/beaches.png',
        'title': 'Beaches',
        'selected': false,
      },
      {
        'image': 'assets/images/valley.png',
        'title': 'Valley',
        'selected': false,
      },
      {
        'image': 'assets/images/mountains.png',
        'title': 'Mountains',
        'selected': false,
      },
      {
        'image': 'assets/images/waterfalls.png',
        'title': 'Waterfalls',
        'selected': false,
      },
    ];

    bool selected = false;

    return GridView.builder(
      itemCount: intersts.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 0.9,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (context, index) => InterestsGridItem(
        image: intersts[index]['image']!,
        title: intersts[index]['title']!,
        selected: intersts[index]['selected'],
      ),
    );
  }
}
