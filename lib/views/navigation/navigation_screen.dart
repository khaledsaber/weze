import 'package:flutter/material.dart';
import 'package:weze/views/home/home_screen.dart';
import 'package:weze/views/location/location_screen.dart';
import 'package:weze/views/settings/contact_us_screen.dart';

import '../../config/resources.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: R.colors.greyScaffoldColor,
      //backgroundColor: Color(0xfffcfcff),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                currentIndex == 0 ? R.icons.naviHomeDotted : R.icons.naviHome,
                width: 25,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                currentIndex == 1
                    ? R.icons.naviLocationDotted
                    : R.icons.naviLocation,
                width: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                currentIndex == 2
                    ? R.icons.naviQuestionDotted
                    : R.icons.naviQuestion,
                width: 25,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Image.asset(
                currentIndex == 3 ? R.icons.naviTrainDotted : R.icons.naviTrain,
                width: 20,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                R.icons.naviUserDotted,
                width: 25,
              ),
              label: '',
              icon: Image.asset(
                R.icons.naviUser,
                width: 20,
              ),
            ),
          ],
        ),
      ),
      body: currentIndex == 0
          ? HomeScreen()
          : currentIndex == 1
              ? LocationScreen()
              : Center(
                  child: Text('kdfdfl;'),
                ),
    );
  }
}
