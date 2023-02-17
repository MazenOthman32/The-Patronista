import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/filed_for_size.dart';
import '../result_of_drawing/drawing.dart';

class Shorts extends StatelessWidget {
  static const routeName = 'Shorts';

  const Shorts({Key? key}) : super(key: key);

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
                        "Shorts",
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
                          FieldForSize(size: size, label: "Top of thigh"),
                          FieldForSize(size: size, label: "Inside leg to heel"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FieldForSize(size: size, label: "Around knee"),
                          FieldForSize(size: size, label: "Around calf"),
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
                              size: size, label: "Front waist to heel"),
                          FieldForSize(
                              size: size, label: "Front waist to  below knee"),
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
                          text: "Add to Customer", onPressedFun: () {}),
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
