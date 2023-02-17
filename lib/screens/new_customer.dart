import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/text_form_field.dart';
import 'home_screen.dart';

class NewCustomer extends StatelessWidget {
  static const routeName = 'NewCustomer';

  const NewCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          MainPage(size: size),
          Container(
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
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
                              "Patronist",
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 70),
                  Form(
                      child: Column(
                    children: [
                      TextFormFiled(
                          label: "Name",
                          iconShowPass: Icons.person_outline_outlined,
                          keyboard: TextInputType.text,
                          iconHidePass: null),
                      SizedBox(height: size.height / 20),
                      TextFormFiled(
                          label: "Phone Number",
                          iconShowPass: Icons.phone_android,
                          keyboard: TextInputType.phone,
                          iconHidePass: null),
                      SizedBox(height: size.height / 20),
                      TextFormFiled(
                          label: "Body Shape",
                          iconShowPass: Icons.person_outline_outlined,
                          show: false,
                          keyboard: TextInputType.visiblePassword,
                          iconHidePass: null),
                      SizedBox(height: size.height / 20),
                      TextFormFiled(
                          label: "Order Date",
                          iconShowPass: Icons.date_range,
                          show: false,
                          keyboard: TextInputType.datetime,
                          iconHidePass: null),
                      SizedBox(height: size.height / 6),
                      DefaultButton(
                          text: "Choose Pattern",
                          onPressedFun: () {
                            Navigator.pushNamed(context, AddNew.routeName);
                          }),
                    ],
                  )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
