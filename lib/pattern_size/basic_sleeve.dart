import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/filed_for_size.dart';
import '../result_of_drawing/drawing.dart';

class BasicSleeve extends StatelessWidget {
  static const routeName = 'BasicSleeve';

  const BasicSleeve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          MainPage(size: size),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
              child: Container(
                height: size.height,
                width: size.width,
                child: Column(
                  children: [
                    Row(
                      children: [
                        BackBtton(onPressed: () {
                          Navigator.pop(context);
                        }),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Basic Sleeve",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white,),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: Column(
                        children: [
                          Form(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // FieldForSize(size: size, label: "Height"),
                                  // FieldForSize(size: size, label: "Waist"),
                                ],
                              ),
                              SizedBox(
                                height: size.height / 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // FieldForSize(size: size, label: "Inside arm"),
                                  // FieldForSize(
                                      // size: size, label: "Around Knuckle"),
                                ],
                              ),
                              SizedBox(
                                height: size.height / 4,
                              ),
                              DefaultButton(
                                  text: "Draw Pattern",
                                  onPressedFun: () {
                                    Navigator.pushNamed(
                                        context, DrawingNow.routeName);
                                  }),
                              DefaultButton(
                                  text: "Add to Customer",
                                  onPressedFun: () {
                                    Navigator.pushNamed(
                                        context, DrawingNow.routeName);
                                  })
                            ],
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
