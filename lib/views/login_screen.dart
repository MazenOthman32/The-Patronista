import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:patronist/views/sign_up.dart';

import '../bottom_nav_bar.dart';
import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/main_text_theme.dart';
import '../constant/text_form_field.dart';
import 'forgot_password.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = 'loginScreen';

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          MainPage(size: size),
          SizedBox(
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height / 8),
                  const Padding(
                    padding: EdgeInsets.only(left: 50),
                    child: MainText(
                      text: "Login",
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: size.height / 5),
                  Form(
                    child: Column(
                      children: [
                        TextFormFiled(
                            label: "Email",
                            iconShowPass: Icons.email,
                            keyboard: TextInputType.emailAddress,
                            iconHidePass: null),
                        SizedBox(height: size.height / 20),
                        TextFormFiled(
                          label: "Password",
                          iconShowPass: Icons.visibility_outlined,
                          keyboard: TextInputType.visiblePassword,
                          iconHidePass: null,
                          show: true,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, ForgotPass.routeName);
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: size.height / 10),
                        DefaultButton(
                          text: "Login",
                          onPressedFun: () async {
                            // final userCredential = await FirebaseAuth.instance
                            //     .signInWithEmailAndPassword(
                            //   email: "test@gmail.com",
                            //   password: "123456789",
                            // );
                            Navigator.pushNamed(
                                context, BottomNavBar.routeName);
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have account?",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(
                                    context, SignUpScreen.routeName);
                              },
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.black54.withOpacity(0.7),
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
