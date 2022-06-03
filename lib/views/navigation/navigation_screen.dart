import 'package:flutter/material.dart';
import 'package:weze/views/settings/contact_us_screen.dart';

import '../../config/resources.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.greyScaffoldColor,
      bottomNavigationBar: BottomNavigationBar(
       currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(R.icons.signOut,width: 25,),
            label: '',
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Image.asset(R.icons.signOut,width: 25,),
          ),BottomNavigationBarItem(
            label: '',
            icon: Image.asset(R.icons.signOut,width: 25,),
          ),BottomNavigationBarItem(
            label: '',
            icon: Image.asset(R.icons.signOut,width: 25,),
          ),
        ],
      ),
      body:   const ContactUSScreen(),
    );
  }
}
