import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weze/config/size_config.dart';
import 'package:weze/views/home/components/home_category_list_item.dart';
import 'package:weze/views/home/components/home_screen_slider.dart';

import '../../config/resources.dart';
import '../category/components/category_list_item.dart';
import '../splash/components/dash_line.dart';
import '../splash/components/page_view_item.dart';
import 'components/header.dart';
import 'components/home_categories_list.dart';
import 'components/section_title.dart';
import 'components/stories_section.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    final defaultSize = SizeConfig.defaultSize;
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xfffcfcff),
      body: Container(
        width: double.infinity,
        child: Stack(
          //alignment: Alignment.center,
          children: [
            Image.asset(
              R.images.homeBacgroune,
              width: double.infinity,
              height: 28 * defaultSize,
              fit: BoxFit.fill,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: defaultSize * 4,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const HomeHeader(),
                        SizedBox(
                          height: defaultSize,
                        ),
                        Text(
                          'Wher do',
                          style: TextStyle(
                              color: R.colors.mainTitleBlue,
                              fontSize: 3 * defaultSize),
                        ),
                        Text(
                          'you want to go?',
                          style: TextStyle(
                            color: R.colors.mainTitleBlue,
                            fontSize: 3 * defaultSize,
                          ),
                        ),
                        SizedBox(
                          height: defaultSize,
                        ),
                        Container(
                          height: defaultSize * 5,
                          width: SizeConfig.screenWidth,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: defaultSize * 1.5,
                              ),
                              Image.asset(
                                R.icons.search,
                                height: defaultSize * 2.5,
                              ),
                              SizedBox(
                                width: defaultSize * 1.5,
                              ),
                              Container(
                                width: 20 * defaultSize,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: 'Search for places',
                                      hintStyle: TextStyle(
                                        fontSize: 1.6 * defaultSize,
                                        color:
                                            const Color(0xff7a869a).withOpacity(
                                          0.6,
                                        ),
                                      ),
                                      // enabledBorder:InputBorder.none,
                                      //   disabledBorder: InputBorder.none,
                                      border: InputBorder.none),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: defaultSize * 3,
                  ),
                  const StoriesSection(),
                  const HomeScreenSlider(),
                  SizedBox(
                    height: defaultSize * 3,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
                    child: SectionTitle(title: 'Categories'),
                  ),
                  SizedBox(
                    height: defaultSize,
                  ),
                  HomeCategriesList(),
                  SizedBox(
                    height: defaultSize * 3,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
                    child: Row(
                      children: [
                        const SectionTitle(title: 'Explore Places'),
                        Expanded(child: Container()),
                        const Text(
                          'More',
                          style: TextStyle(
                            color: Color(0xff9ca0bc),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 15,
                          color: Color(0xff9ca0bc),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
