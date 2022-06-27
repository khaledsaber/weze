import 'package:flutter/material.dart';

import '../../../config/size_config.dart';

class ExplorePlaces extends StatelessWidget {
  const ExplorePlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultSize = SizeConfig.defaultSize;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
      child: SizedBox(
        // height: 400,
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 180,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/beaches.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    height: defaultSize,
                  ),
                  Container(
                    height: 260,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/mountains.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: defaultSize,
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    height: 260,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/masarat.png',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(
                    height: defaultSize,
                  ),
                  Container(
                    height: 180,
                    //color: Colors.red,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/valley.png',
                          ),
                          fit: BoxFit.cover),
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
