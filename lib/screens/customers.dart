import 'package:flutter/material.dart';
import 'package:patronist/screens/persons_data.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import 'about_screen.dart';
import 'new_customer.dart';

class ChooseCustomer extends StatelessWidget {
  static const routeName = 'ChooseCustomer';

  const ChooseCustomer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          MainPage(
            size: size,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Patronist",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20 ,color: Colors.white),
                ),
                Container(
                  height: 40,
                  width: 40,
                  child: IconButton(icon: Image.asset("assets/about.png") , onPressed:(){ Navigator.pushNamed(
                      context, AboutScreen.routeName);} ,),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DefaultButton(
                    text: "New Customer",
                    onPressedFun: () {
                      Navigator.pushNamed(context, NewCustomer.routeName);
                    }),
                DefaultButton(
                    text: "View old Customer ",
                    onPressedFun: () {
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
