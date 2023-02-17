import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:patronist/screens/customers.dart';
import 'package:patronist/screens/settings_screen.dart';

import 'screens/home_screen.dart';

class BottomNavBar extends StatefulWidget {
  static const routeName = 'Bottom screen';
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  var li = [
    const ChooseCustomer(),
    const AddNew(),
    const Setting(),
  ];
  int selectedItem = 1;

  void selectedPage(int val) {
    setState(() {
      selectedItem = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: li[selectedItem],
      bottomNavigationBar: CurvedNavigationBar(

        index: 1,
        onTap: selectedPage,
        height: 60.0,
        items: const <Widget>[
          Icon(  color: Colors.white,
              Icons.cut_outlined),
          Icon(
            color: Colors.white,

            Icons.home,
          ),
          Icon(
            color: Colors.white,
            Icons.settings,
          ),
        ],
        color: Colors.teal.shade200,
        //Color(0xff39AAA8).withOpacity(0)
        buttonBackgroundColor: const Color(0xff39AAA8).withOpacity(0),

        //Color(0xff39AAA8),
        backgroundColor: const Color(0xff39AAA8),
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
      ),
    );
  }
}
