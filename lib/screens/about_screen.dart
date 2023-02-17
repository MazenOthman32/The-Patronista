import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = 'aboutScreen';
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          MainPage(size: size),
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 10),
            child: Row(
              children: [
                BackBtton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                SizedBox(width: 10),
                Text(
                  "Help",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500,color: Colors.white),
                )
              ],
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(60),
                ),
                height: size.height / 1.3,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 40.0, right: 30, left: 30, bottom: 10),
                  child: Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const Text(
                            "If you have a new customer that you wanna register Click on here",
                            style: TextStyle(fontWeight: FontWeight.w500 ,color: Colors.white),
                          ),
                          Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/about/newcustomerr.jpg")))),
                          const Divider(
                            color: Colors.white,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Then enter your customer data as requiredAfter you’re done with this step Click on",
                            style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),
                          ),
                          Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/about/choosepatternn.jpg")))),
                          const Divider(
                            color: Colors.white,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "And choose the pattern you wanna createLet’s say you wanna create a basic blouseClick on it and it will lead you to this page",
                            style: TextStyle(fontWeight: FontWeight.w500 ,color: Colors.white),
                          ),
                          Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/about/basicblouse.jpg")))),
                          const Divider(
                            color: Colors.white,
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "if you wanna browse you old customers data Click on “view old customers” in the home page",
                            style: TextStyle(fontWeight: FontWeight.w500 ,color: Colors.white),
                          ),
                          Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/about/oldcustomer.jpg")))),
                          const Divider(
                            color: Colors.white,
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Which will lead you to the customers page where you can open any customer’s page to check his patterns and measaurments ",
                            style: TextStyle(fontWeight: FontWeight.w500 ,color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/about/beforee.jpg"),
                              ))),
                          const Divider(
                            color: Colors.white,
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "In the customer’s measurements page you can edit the measurements or re-print the pattern ",
                            style: TextStyle(fontWeight: FontWeight.w500 ,color: Colors.white),
                          ),
                          Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/about/editt.jpg"),
                              ))),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
