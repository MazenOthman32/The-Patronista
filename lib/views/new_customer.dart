import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/text_form_field.dart';
import '../cubit/cusomer/customer_cubit.dart';
import 'home_screen.dart';

class NewCustomer extends StatelessWidget {
  static const routeName = 'NewCustomer';
  NewCustomer({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController codeController = TextEditingController();
  bool isLoading = false;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BlocConsumer<CustomerCubit, CustomerState>(
      listener: (context, state) {
        if (state is AddCustomerLoading) {
          isLoading = true;
        } else if (state is AddCustomerSuccess) {
          isLoading = false;
          Navigator.pushNamed(context, AddNew.routeName);
        } else if (state is AddCustomerFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
          child: Scaffold(
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
                          padding: const EdgeInsets.only(
                              left: 10, right: 10, top: 40),
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
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 70),
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              TextFormFiled(
                                controller: codeController,
                                label: "Code",
                                iconShowPass: Icons.qr_code,
                                keyboard: TextInputType.text,
                                iconHidePass: null,
                              ),
                              SizedBox(height: size.height / 20),
                              TextFormFiled(
                                controller: nameController,
                                label: "Name",
                                iconShowPass: Icons.person_outline_outlined,
                                keyboard: TextInputType.text,
                                iconHidePass: null,
                              ),
                              SizedBox(height: size.height / 20),
                              TextFormFiled(
                                controller: emailController,
                                label: "Email",
                                iconShowPass: Icons.email_outlined,
                                keyboard: TextInputType.emailAddress,
                                iconHidePass: null,
                              ),
                              SizedBox(height: size.height / 20),
                              TextFormFiled(
                                  controller: phoneController,
                                  label: "Phone Number",
                                  iconShowPass: Icons.phone_android,
                                  keyboard: TextInputType.phone,
                                  iconHidePass: null),
                              SizedBox(height: size.height / 6),
                              DefaultButton(
                                text: "Choose Pattern",
                                onPressedFun: () {
                                  if (formKey.currentState!.validate()) {
                                    BlocProvider.of<CustomerCubit>(context)
                                        .addCustomer(
                                      code: codeController.text,
                                      name: nameController.text,
                                      email: emailController.text,
                                      phone: phoneController.text,
                                    );
                                  }
                                },
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
          ),
        );
      },
    );
  }
}
