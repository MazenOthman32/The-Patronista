// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../bottom_nav_bar.dart';
import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/main_text_theme.dart';
import '../constant/text_form_field.dart';
import 'login_screen.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = 'sign up Screen';

  const SignUpScreen({super.key});

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
                  SizedBox(height: size.height / 9),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: MainText(
                      text: "Sign Up",
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: size.height / 11),
                  Form(
                      child: Column(
                    children: [
                      TextFormFiled(
                          label: "First Name",
                          iconShowPass: Icons.person_outline_outlined,
                          keyboard: TextInputType.text,
                          iconHidePass: null),
                      SizedBox(height: size.height / 20),
                      TextFormFiled(
                          label: "Last Name",
                          iconShowPass: Icons.person_outline_outlined,
                          keyboard: TextInputType.text,
                          iconHidePass: null),
                      SizedBox(height: size.height / 20),
                      TextFormFiled(
                          label: "Email",
                          iconShowPass: Icons.email_outlined,
                          keyboard: TextInputType.emailAddress,
                          iconHidePass: null),
                      SizedBox(height: size.height / 20),
                      TextFormFiled(
                          label: "Phone Number",
                          iconShowPass: Icons.phone_android,
                          keyboard: TextInputType.phone,
                          iconHidePass: null),
                      SizedBox(height: size.height / 20),
                      TextFormFiled(
                          label: "Password",
                          iconShowPass: Icons.visibility_outlined,
                          show: true,
                          keyboard: TextInputType.visiblePassword,
                          iconHidePass: Icons.visibility_off_outlined),
                      SizedBox(height: size.height / 20),
                      TextFormFiled(
                          label: "Confirm Password",
                          iconShowPass: Icons.visibility_outlined,
                          show: true,
                          keyboard: TextInputType.visiblePassword,
                          iconHidePass: Icons.visibility_off_outlined),
                      SizedBox(height: size.height / 20),
                      DefaultButton(
                          text: "Sign Up",
                          onPressedFun: () {
                            Navigator.pushNamed(
                                context, BottomNavBar.routeName);
                          }),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Already have account?",
                                style: TextStyle(fontWeight: FontWeight.w500 ,color:  Colors.white)),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacementNamed(
                                      context, LoginScreen.routeName);
                                },
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 15),
                                ))
                          ],
                        ),
                      ),
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
