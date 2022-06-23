import 'package:flutter/material.dart';

import '../../../config/resources.dart';
import '../../../config/size_config.dart';

class HomeCategoryListItem extends StatefulWidget {
  HomeCategoryListItem({
    Key? key,
    required this.image,
    required this.title,
    required this.selected,
  }) : super(key: key);

  final String image, title;
  bool selected;

  @override
  State<HomeCategoryListItem> createState() => _HomeCategoryListItemState();
}

class _HomeCategoryListItemState extends State<HomeCategoryListItem> {
  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.selected = ! widget.selected;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: defaultSize),
        width: defaultSize * 14,
        // height: defaultSize * 5,
        decoration: BoxDecoration(
            color: widget.selected ? R.colors.buttonBlueColor : Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: widget.selected? R.colors.buttonBlueColor:Colors.grey.shade100,
            )),
        child: Row(
          children: [
            SizedBox(
              width: defaultSize,
            ),
            Image.asset(
              widget.image,
              width: 4 * defaultSize,
            ),
            SizedBox(
              width: defaultSize,
            ),
            Text(
              widget.title,
              style: TextStyle(
                color: widget.selected ? Colors.white : Colors.black,
              fontSize: defaultSize*1.5
              ),
            )
          ],
        ),
      ),
    );
  }
}
