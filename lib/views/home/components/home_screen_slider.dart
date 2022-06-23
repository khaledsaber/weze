import 'package:flutter/material.dart';
import 'package:weze/config/size_config.dart';

import '../../splash/components/dash_line.dart';

class HomeScreenSlider extends StatefulWidget {
  const HomeScreenSlider({Key? key}) : super(key: key);

  @override
  State<HomeScreenSlider> createState() => _HomeScreenSliderState();
}

class _HomeScreenSliderState extends State<HomeScreenSlider> {
  int currentPage = 0;

  List<Map<String, String>> intro = [
    {
      'image': 'assets/images/waterfalls.png',
      'title': 'Waterfall',
    },
    {
      'image': 'assets/images/mountains.png',
      'title': 'Mountain',
    },
    {
      'image': 'assets/images/valley.png',
      'title': 'Valley',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: EdgeInsets.only(left: defaultSize * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: defaultSize * 15,
            width: double.infinity,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: intro.length,
              itemBuilder: (context, index) => Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(intro[index]["image"]!),
                  ),
                ),
                margin: const EdgeInsets.only(right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: defaultSize * 5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.24),
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          intro[index]["title"]!,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: defaultSize,),
          DashLine(currentPage: currentPage),
        ],
      ),
    );
  }
}
