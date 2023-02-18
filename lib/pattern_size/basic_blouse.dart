import 'package:flutter/material.dart';
import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/filed_for_size.dart';
import '../result_of_drawing/drawing.dart';

class BasicBlouse extends StatelessWidget {
  static const routeName = 'BasicBlouse';

  const BasicBlouse({Key? key}) : super(key: key);

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
                        "Basic Blouse",
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
                          // FieldForSize(size: size, label: "Upper Bust"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(size: size, label: "Bust"),
                          // FieldForSize(size: size, label: "N to shoulder"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(size: size, label: "Waist"),
                          // FieldForSize(size: size, label: "High hip"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(size: size, label: "Hip"),
                          // FieldForSize(size: size, label: "Shoulder width"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(size: size, label: "Neck to waist"),
                          // FieldForSize(
                          //     size: size, label: "Waist to crotch line"),
                        ],
                      ),
                      SizedBox(
                        height: size.height / 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // FieldForSize(
                          //     size: size, label: "Under bust to waist"),
                          // FieldForSize(size: size, label: "Neck to shoulder"),
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
