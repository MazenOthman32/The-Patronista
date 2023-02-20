import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/main_text_theme.dart';
import 'login_screen.dart';

class StartScreen extends StatelessWidget {
  static const routeName = 'startScreen';
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          MainPage(size: size),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Align(
                    alignment: Alignment.center,
                    child: MainText(
                      fontSize: 30,
                      text: "Welcome to \nPatronist Designer",
                      color: Colors.white,
                    )),
              ),
              Center(
                child: DefaultButton(
                  text: "Get Started",
                  onPressedFun: () async {
                    // await FirebaseAuth.instance.signOut();
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
