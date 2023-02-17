import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/filed_for_size.dart';
import '../result_of_drawing/drawing.dart';

class Hoodie extends StatelessWidget {
  static const routeName = 'Hoodie';

  const Hoodie({Key? key}) : super(key: key);

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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                          "Hoodie",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white,),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.only(top: 80.0),
                      child: Column(
                        children: [
                          Form(
                              child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FieldForSize(size: size, label: "Head"),
                                  FieldForSize(size: size, label: "Neck"),
                                ],
                              ),
                              SizedBox(
                                height: size.height / 3,
                              ),
                              DefaultButton(
                                  text: "Draw Pattern",
                                  onPressedFun: () {
                                    Navigator.pushNamed(
                                        context, DrawingNow.routeName);
                                  }),
                              DefaultButton(
                                  text: "Add to Customer", onPressedFun: () {}),
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
