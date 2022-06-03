import 'package:flutter/material.dart';

import '../../../config/resources.dart';
import '../../../config/size_config.dart';

class CategoryListItem extends StatefulWidget {
  CategoryListItem({
    Key? key,
    required this.index,
    required this.selected,
  }) : super(key: key);

  final int index;
  bool selected;

  @override
  State<CategoryListItem> createState() => _CategoryListItemState();
}

class _CategoryListItemState extends State<CategoryListItem> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;

    return Stack(children: [
      Container(
        margin: EdgeInsets.only(bottom: defaultSize * 1.5),
        width: double.infinity,
        height: defaultSize * 23,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.asset(
                R.images.loginBackground,
                fit: BoxFit.cover,
                width: double.infinity,
                height: defaultSize * 15,
              ),
            ),
            SizedBox(
              height: defaultSize * 1.5,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: defaultSize, right: defaultSize * 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Place short Name',
                    style: TextStyle(fontSize: defaultSize * 1.5),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.selected = !widget.selected;
                      });
                    },
                    child: Image.asset(
                      widget.selected ? R.icons.redHeart : R.icons.emptyHeart,
                      width: defaultSize * 1.8,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: defaultSize,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: defaultSize, right: defaultSize * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        R.icons.location,
                        width: defaultSize,
                      ),
                      SizedBox(
                        width: defaultSize * .5,
                      ),
                      Text(
                        'North region',
                        style: TextStyle(
                          fontSize: defaultSize * 1.2,
                          color: Color(0xffacb1c0),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'Easy, almost 1 hour',
                    style: TextStyle(fontSize: defaultSize * 1.2,color: Color(0xff38d826)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Positioned(
          child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: defaultSize, vertical: defaultSize * 1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xff1fbec9),
        ),
        padding: EdgeInsets.all(defaultSize),
        child: Text(
          widget.index == 0
              ? 'Overloacked'
              : widget.index == 1
                  ? 'Valley'
                  : 'Nature reserve',
          style: TextStyle(color: Colors.white),
        ),
      ))
    ]);
  }
}
