import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:patronist/cubit/sign_up_cubit/sign_up_cubit.dart';

import '../bottom_nav_bar.dart';
import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/main_text_theme.dart';
import '../constant/text_form_field.dart';
import 'login_screen.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  static const routeName = 'sign up Screen';
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fristController = TextEditingController();
  TextEditingController lastController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          isLoading = true;
        } else if (state is SignUpSuccess) {
          isLoading = false;
          Navigator.pushNamed(context, BottomNavBar.routeName);
        } else if (state is SignUpFailure) {
          isLoading = false;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Scaffold(
            body: Stack(
              children: [
                MainPage(size: size),
                SizedBox(
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
                                controller: fristController,
                                validator: (data) {
                                  if (data!.isEmpty) {
                                    return "Please Enter Your First Name";
                                  }
                                },
                                label: "First Name",
                                iconShowPass: Icons.person_outline_outlined,
                                keyboard: TextInputType.text,
                                iconHidePass: null),
                            SizedBox(height: size.height / 20),
                            TextFormFiled(
                                controller: lastController,
                                validator: (data) {
                                  if (data!.isEmpty) {
                                    return "Please Enter Your Last Name";
                                  }
                                },
                                label: "Last Name",
                                iconShowPass: Icons.person_outline_outlined,
                                keyboard: TextInputType.text,
                                iconHidePass: null),
                            SizedBox(height: size.height / 20),
                            TextFormFiled(
                                controller: emailController,
                                validator: (data) {
                                  if (data!.isEmpty) {
                                    return "Please Enter Your Email";
                                  }
                                },
                                label: "Email",
                                iconShowPass: Icons.email_outlined,
                                keyboard: TextInputType.emailAddress,
                                iconHidePass: null),
                            SizedBox(height: size.height / 20),
                            TextFormFiled(
                                controller: phoneController,
                                validator: (data) {
                                  if (data!.isEmpty) {
                                    return "Please Enter Your Phone Number";
                                  }
                                },
                                label: "Phone Number",
                                iconShowPass: Icons.phone_android,
                                keyboard: TextInputType.phone,
                                iconHidePass: null),
                            SizedBox(height: size.height / 20),
                            TextFormFiled(
                                controller: passwordController,
                                validator: (data) {
                                  if (data!.isEmpty) {
                                    return "Please Enter Your Password";
                                  }
                                },
                                label: "Password",
                                iconShowPass: Icons.visibility_outlined,
                                show: true,
                                keyboard: TextInputType.visiblePassword,
                                iconHidePass: Icons.visibility_off_outlined),
                            SizedBox(height: size.height / 20),
                            TextFormFiled(
                                controller: confirmPasswordController,
                                validator: (data) {
                                  if (data!.isEmpty) {
                                    return "Please Enter Your Confirm Password";
                                  } else if (data != passwordController.text) {
                                    return "Password Not Match";
                                  }
                                },
                                label: "Confirm Password",
                                iconShowPass: Icons.visibility_outlined,
                                show: true,
                                keyboard: TextInputType.visiblePassword,
                                iconHidePass: Icons.visibility_off_outlined),
                            SizedBox(height: size.height / 20),
                            DefaultButton(
                              text: "Sign Up",
                              onPressedFun: () {
                                BlocProvider.of<SignUpCubit>(context).signUp(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  firstName: fristController.text,
                                  lastName: lastController.text,
                                  phoneNumber: phoneController.text,
                                  confirmPassword:
                                      confirmPasswordController.text,
                                );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Already have account?",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white)),
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
                                    ),
                                  ),
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
          ),
        );
      },
    );
  }
}
