import 'package:flutter/material.dart';
import 'package:weze/views/home/components/section_title.dart';

import '../../../config/resources.dart';
import '../../../config/size_config.dart';

class StoriesSection extends StatelessWidget {
  const StoriesSection({
    Key? key,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.only(left: defaultSize * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(
            title: 'Stories',
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blueAccent,
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: 15,
                  //physics: nev,
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      //      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.blueAccent,
                      ),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          R.images.loginBackground,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
