import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:patronist/result_of_drawing/result.dart';
import '../constant/background.dart';
import '../constant/buttons.dart';
import '../cubit/log_in/log_in_cubit.dart';
import 'invite_screen.dart';
import 'login_screen.dart';

class Setting extends StatelessWidget {
  static const routeName = 'settings';

  const Setting({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isLoading = false;

    return BlocConsumer<LogInCubit, LogInState>(
      listener: (context, state) {
        if (state is LogOutLoading) {
          isLoading = true;
        } else if (state is LogOutSuccess) {
          isLoading = false;
          Navigator.pushReplacementNamed(context, LoginScreen.routeName);
        } else if (state is LogOutFailure) {
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
                ListView(
                  children: [
                    SizedBox(
                      height: size.height,
                      width: size.width,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 26.0, bottom: 30),
                            child: ListTile(
                              onTap: () {},
                              leading: Container(
                                height: 55,
                                width: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                          "assets/persons/persix.png",
                                        ),
                                        fit: BoxFit.cover)),
                              ),
                              trailing: const Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              title: const Text(
                                "Jouana James",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.white),
                              ),
                              subtitle: const Text(
                                "JouanaJames@gmail.com",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                          ),
                          ListTile(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (_) => AlertDialog(
                                  backgroundColor: Colors.white,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(16.0),
                                    ),
                                  ),
                                  content: Builder(
                                    builder: (context) {
                                      var height =
                                          MediaQuery.of(context).size.height;
                                      var width =
                                          MediaQuery.of(context).size.width;

                                      return SizedBox(
                                        height: size.height / 3,
                                        width: width - 0,
                                        // ignore: avoid_unnecessary_containers
                                        child: Container(
                                          child: ListView(
                                            children: [
                                              Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Icon(
                                                          Icons.arrow_back,
                                                          color: Colors.black,
                                                          size: 17,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(height: 12),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 15),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Write Your FeedBack',
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                      ),
                                                      minLines:
                                                          6, // any number you need (It works as the rows for the textarea)
                                                      keyboardType:
                                                          TextInputType
                                                              .multiline,
                                                      maxLines: null,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                          elevation: 1,
                                                          content: Text('Done'),
                                                        ),
                                                      );
                                                    },
                                                    child: const Text('Send'),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                            leading: const Icon(
                              Icons.feedback_outlined,
                              color: Colors.white,
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 17,
                            ),
                            title: const Text(
                              "FeedBack",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pushNamed(context, Invite.routeName);
                            },
                            leading: const Icon(Icons.insert_invitation,
                                color: Colors.white),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 17,
                            ),
                            title: const Text(
                              "Invite",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                          ),
                          ListTile(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                      'History isn\'t Available Right Now... , We are Sorry'),
                                ),
                              );
                            },
                            leading: const Icon(Icons.history_outlined,
                                color: Colors.white),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 17,
                            ),
                            title: const Text(
                              "History",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                          const Divider(
                            color: Colors.white,
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, LoginScreen.routeName);
                            },
                            leading: const Icon(Icons.switch_account_outlined,
                                color: Colors.white),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 17,
                            ),
                            title: const Text(
                              "Switch Account",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: size.height / 10,
                          ),
                          DefaultButton(
                            text: "Log out",
                            onPressedFun: () {
                              showAlertDialog(context,
                                  BlocProvider.of<LogInCubit>(context));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  showAlertDialog(BuildContext context, LogInCubit cubit) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: const Text(
        "Cancel",
        style: TextStyle(color: Colors.grey),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Sure"),
      onPressed: () {
        cubit.logOut();
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: const Padding(
        padding: EdgeInsets.only(top: 20),
        child: Text(
          "Are You Sure\nyou want to log out ?",
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        cancelButton,
        continueButton,
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

class SwitchAccount {}
