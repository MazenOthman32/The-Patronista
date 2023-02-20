import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/text_form_field.dart';

class Invite extends StatelessWidget {
  static const routeName = 'invite';
  const Invite({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          MainPage(size: size),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      BackBtton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Invite',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w500 ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 5),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [],
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: size.height / 1.8,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0)),
                  color: Colors.white.withOpacity(0.3),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Share with Community',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Copy Link',
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: const Icon(
                            Icons.link,
                            color: Colors.white,
                            size: 25,
                          ),
                          enabledBorder: OutlineInputBorder(

                              borderRadius: BorderRadius.circular(16),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              )),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide: BorderSide(
                                color: Colors.white,
                              )),
                        ),
                      ),
                      const Text(
                        'Share via ...',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500 ,color: Colors.white),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/whatsapp.png',
                                  fit: BoxFit.cover,
                                  width: 55,
                                ),
                                Image.asset(
                                  'assets/telegram.png',
                                  fit: BoxFit.cover,
                                  width: 55,
                                ),
                                Image.asset(
                                  'assets/instagram.png',
                                  fit: BoxFit.cover,
                                  width: 55,
                                ),
                                Image.asset(
                                  'assets/facebook.png',
                                  fit: BoxFit.cover,
                                  width: 55,
                                ),
                                Image.asset(
                                  'assets/more.png',
                                  fit: BoxFit.cover,
                                  width: 45,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
