import 'package:flutter/material.dart';
import 'package:weze/widgets/title_app_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../../config/resources.dart';
import '../../config/size_config.dart';
import '../../widgets/footer_button.dart';

class UsetPointsScreen extends StatelessWidget {
  const UsetPointsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;

    return Scaffold(
      appBar: const TitleAppBar(
        title: 'My Points',
      ),
      backgroundColor: R.colors.greyScaffoldColor,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      R.images.cup,
                      width: 150,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Earn Point',
                      style: TextStyle(
                        color: R.colors.mainTitleBlue,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      '150 points = Trip reward',
                      style: TextStyle(fontSize: 19),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    LinearPercentIndicator(
                      lineHeight: 8,
                      percent: 0.5,
                      progressColor: Colors.green,
                      backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                      horizontal: 40,

                        )),
                    Padding(
                      padding: const EdgeInsets.all(35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '0',
                            style: TextStyle(color: Color(0xff9ca0bc)),
                          ),
                          Text(
                            '75/150 points',
                            style: TextStyle(color: R.colors.buttonBlueColor),
                          ),
                          Text(
                            '150',
                            style: TextStyle(
                              color: Color(0xff9ca0bc),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fixedSize: Size(MediaQuery.of(context).size.width, 50),
                  primary: Color(0xfffcd732)),
              onPressed: () {},
              child: Text(
                'Get Trip',
                style:
                    TextStyle(fontSize: defaultSize * 1.5, color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
