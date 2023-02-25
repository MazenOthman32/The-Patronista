import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:patronist/constant/current_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:patronist/models/customer_model.dart';
import 'package:patronist/views/details_screen.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/list_tile.dart';
import '../constant/text_form_field.dart';
import '../cubit/cusomer/customer_cubit.dart';
import '../models/baisc_skirt_model.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  //static const IconData ic = IconData(0xf064c);
  static const routeName = 'HomeScreen';
  TextEditingController searchController = TextEditingController();

  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final args = ModalRoute.of(context)!.settings.arguments as BasicSkirtModel?;
    bool isLoading = false;
    return BlocConsumer<CustomerCubit, CustomerState>(
      listener: (context, state) {
        if (state is AddPatternToCustomerLoading) {
          isLoading = true;
        } else if (state is AddPatternToCustomerSuccess) {
          isLoading = false;
          Navigator.pushReplacementNamed(
            context,
            Details.routeName,
            arguments: state.customer,
          );
        } else if (state is AddPatternToCustomerFailure) {
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
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  BackBtton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Patronist",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                                width: 40,
                                child: IconButton(
                                  icon: Image.asset("assets/about.png"),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      AboutScreen.routeName,
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 45,
                          child: TextFormFiled(
                            controller: searchController,
                            label: "Search",
                            iconShowPass: Icons.search,
                            keyboard: TextInputType.text,
                            iconHidePass: null,
                          ),
                        ),
                        const SizedBox(height: 30),
                        FutureBuilder(
                          future: FirebaseFirestore.instance
                              .collection('users')
                              .doc(CurrentUser.get()!.id)
                              .collection('customer')
                              .get(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: snapshot.data?.docs.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {},
                                  child: ListTiles(
                                    code: snapshot.data?.docs[index]['code'],
                                    name: snapshot.data?.docs[index]['name'],
                                    image: "assets/persons/pertwo.png",
                                    onTap: () {
                                      if (args == null) {
                                        Navigator.pushReplacementNamed(
                                          context,
                                          Details.routeName,
                                          arguments: CustomerModel.fromJson(
                                            snapshot.data?.docs[index].data()
                                                as Map<String, dynamic>,
                                          ),
                                        );
                                      } else {
                                        BlocProvider.of<CustomerCubit>(context)
                                            .addPatternToCustomer(
                                          customer: CustomerModel.fromJson(
                                            snapshot.data?.docs[index].data()
                                                as Map<String, dynamic>,
                                          ),
                                          pattern: args,
                                        );
                                      }
                                    },
                                  ),
                                );
                              },
                            );
                          },
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
