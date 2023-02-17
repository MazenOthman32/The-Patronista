import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/filed_for_size.dart';
import '../result_of_drawing/drawing.dart';

class BasicTrouser extends StatelessWidget {
  static const routeName = 'BasicTrouser';

  const BasicTrouser({Key? key}) : super(key: key);

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
                        "Basic Trouser",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white,),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Form(
                      child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FieldForSize(size: size, label: "Height"),
                          FieldForSize(size: size, label: "Waist"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FieldForSize(size: size, label: "High hip"),
                          FieldForSize(size: size, label: "Hip"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FieldForSize(size: size, label: "Top of Thigh"),
                          FieldForSize(size: size, label: "inside leg to heel"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FieldForSize(size: size, label: "Around knee"),
                          FieldForSize(size: size, label: "Around Calf"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FieldForSize(size: size, label: "Around Ankle"),
                          FieldForSize(size: size, label: "Foot width"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FieldForSize(
                              size: size, label: "Front Waist to heel"),
                          FieldForSize(
                              size: size, label: "Front Waist to below knee"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FieldForSize(
                              size: size, label: "Waist to crotch line"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      DefaultButton(
                          text: "Draw Pattern",
                          onPressedFun: () {
                            Navigator.pushNamed(context, DrawingNow.routeName);
                          }),
                      DefaultButton(
                          text: "Add to Customer", onPressedFun: () {})
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
