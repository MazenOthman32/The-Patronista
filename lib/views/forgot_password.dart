import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/text_form_field.dart';
import 'login_screen.dart';

class ForgotPass extends StatelessWidget {
  static const routeName = 'ForgotPassScreen';
  const ForgotPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          MainPage(size: size),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(60),
                ),
                height: size.height / 1.5,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        Icons.lock_outline,
                        size: 60,
                        color: Color(0xff37B98B),
                      ),
                      const SizedBox(height: 10),
                      const Text("Reset Password",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 17 ,color: Colors.white)),
                      const SizedBox(
                        height: 15,
                      ),
                      Text("Enter your email to send new password ",
                          style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 15,
                              color: Colors.white.withOpacity(0.8))),
                      Container(
                          height: 50,
                          child: TextFormFiled(
                              label: "Enter email",
                              iconShowPass: Icons.email_outlined,
                              keyboard: TextInputType.emailAddress,
                              iconHidePass: null)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SmallButton(
                            onPressedFun: () {},
                            text: "reset password ",
                          ),
                          SmallButton(
                            onPressedFun: () {
                              Navigator.pushNamed(
                                  context, LoginScreen.routeName);
                            },
                            text: "back to login",
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
