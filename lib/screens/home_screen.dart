import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../constant/background.dart';
import '../pattern_size/basic_skirt.dart';
import '../pattern_size/basic_sleeve.dart';
import '../pattern_size/basic_trouser.dart';
import '../pattern_size/basic_blouse.dart';
import '../pattern_size/fiited_bluse.dart';
import '../pattern_size/hoodie.dart';
import '../pattern_size/puffed_sleeve.dart';
import '../pattern_size/shorts.dart';
import 'about_screen.dart';

class AddNew extends StatelessWidget {
  static const routeName = 'AddNew';
  const AddNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          MainPage(
            size: size,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Choose Pattern",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20 ,color: Colors.white),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        child: IconButton(icon: Image.asset("assets/about.png") , onPressed:(){ Navigator.pushNamed(
                            context, AboutScreen.routeName);} ,),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 50.0, left: 20, right: 20, bottom: 20),
                  child: StaggeredGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, BasicBlouse.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 170,
                          width: 120,
                          child: Column(
                            children: [
                              Container(
                                width: 135,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/Basic blouse.png"))),
                              ),
                              const SizedBox(height: 5),
                              const Text("Basic blouse",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, BasicSkirt.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 170,
                          width: 120,
                          child: Column(
                            children: [
                              Container(
                                width: 135,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/Basic skirt.png"))),
                              ),
                              const SizedBox(height: 5),
                              const Text("Basic skirt",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, BasicSleeve.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 170,
                          width: 120,
                          child: Column(
                            children: [
                              Container(
                                width: 135,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/Basic sleeve.png"))),
                              ),
                              const SizedBox(height: 5),
                              const Text("Basic sleeve",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, BasicTrouser.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 170,
                          width: 120,
                          child: Column(
                            children: [
                              Container(
                                width: 135,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/Basic trouser.png"))),
                              ),
                              const SizedBox(height: 5),
                              const Text("Basic trouser",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, FittedBlouse.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 170,
                          width: 120,
                          child: Column(
                            children: [
                              Container(
                                width: 135,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/Fitted blouse.png"))),
                              ),
                              const SizedBox(height: 5),
                              const Text("Fitted blouse",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Hoodie.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 170,
                          width: 120,
                          child: Column(
                            children: [
                              Container(
                                width: 135,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image:
                                            AssetImage("assets/Hoodie.png"))),
                              ),
                              const SizedBox(height: 5),
                              const Text("Hoodie",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, PuffedSleeve.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 170,
                          width: 120,
                          child: Column(
                            children: [
                              Container(
                                width: 135,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/Puffed sleeve.png"))),
                              ),
                              const SizedBox(height: 5),
                              const Text("Puffed sleeve",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Shorts.routeName);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          height: 170,
                          width: 120,
                          child: Column(
                            children: [
                              Container(
                                width: 135,
                                height: 135,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage("assets/short.png"))),
                              ),
                              const Text("Shorts",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
