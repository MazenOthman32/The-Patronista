import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../result_of_drawing/drawing.dart';

class FittedBlouse extends StatelessWidget {
  static const routeName = 'FittedBlouse';

  const FittedBlouse({Key? key}) : super(key: key);

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
                        "Fitted Blouse",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
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
                          // FieldForSize(size: size, label: "Height"),
                          // FieldForSize(size: size, label: "Head"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(size: size, label: "Neck"),
                          // FieldForSize(size: size, label: "Bust"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(size: size, label: "N to shoulder"),
                          // FieldForSize(size: size, label: "Waist"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(size: size, label: "High hip"),
                          // FieldForSize(size: size, label: "Hip"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(size: size, label: "Shoulder width"),
                          // FieldForSize(size: size, label: "Neck to waist"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(
                          //     size: size, label: "Waist to crotch line"),
                          // FieldForSize(
                          //     size: size, label: "Under bust to waist"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(size: size, label: "Neck to shoulder"),
                          // FieldForSize(size: size, label: "N to N"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(size: size, label: "Upper Bust"),
                          // FieldForSize(size: size, label: "Upper Brust"),
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
