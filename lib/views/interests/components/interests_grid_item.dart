import 'package:flutter/material.dart';

import '../../../config/resources.dart';

class InterestsGridItem extends StatefulWidget {
   InterestsGridItem({
    Key? key,
    required this.image,
    required this.title,required this.selected,
  }) : super(key: key);

  final String image, title;
  bool selected;

  @override
  State<InterestsGridItem> createState() => _InterestsGridItemState();
}

class _InterestsGridItemState extends State<InterestsGridItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
         widget.selected = ! widget.selected;
        });
      },
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Image.asset(widget.image),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(color: Colors.white),
                ),
                Image.asset(
                  widget.selected
                      ? R.icons.checkedCircleButton
                      : R.icons.emptyCircleButton,
                  width: 25,
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
