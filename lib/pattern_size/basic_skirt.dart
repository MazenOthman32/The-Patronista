import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/filed_for_size.dart';
import '../models/baisc_skirt_model.dart';
import '../result_of_drawing/drawing.dart';

class BasicSkirt extends StatelessWidget {
  static const routeName = 'BasicSkirt';

  BasicSkirt({Key? key}) : super(key: key);

  final height = TextEditingController();
  final waist = TextEditingController();
  final highHip = TextEditingController();
  final hip = TextEditingController();
  final formKey = GlobalKey<FormState>();

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
                          "Basic Skirt",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FieldForSize(
                                  size: size,
                                  label: "Height",
                                  controller: height,
                                ),
                                FieldForSize(
                                  size: size,
                                  label: "Waist",
                                  controller: waist,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height / 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FieldForSize(
                                  size: size,
                                  label: "High hip",
                                  controller: highHip,
                                ),
                                FieldForSize(
                                  size: size,
                                  label: "Hip",
                                  controller: hip,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height / 20,
                            ),
                            SizedBox(
                              height: size.height / 4,
                            ),
                            DefaultButton(
                              text: "Draw Pattern",
                              onPressedFun: () {
                                if (formKey.currentState!.validate()) {
                                  Navigator.pushNamed(
                                      context, DrawingNow.routeName,
                                      arguments: BasicSkirtModel.fromJson(
                                          height.text,
                                          waist.text,
                                          hip.text,
                                          highHip.text)

                                      // 'height': height.text,
                                      // 'waist': waist.text,
                                      // 'highHip': highHip.text,
                                      // 'hip': hip.text,

                                      );
                                }
                                // Navigator.pushNamed(
                                //     context, DrawingNow.routeName);
                              },
                            ),
                            DefaultButton(
                                text: "Add to Customer",
                                onPressedFun: () {
                                  Navigator.pushNamed(
                                      context, DrawingNow.routeName);
                                }),
                          ],
                        ))
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
