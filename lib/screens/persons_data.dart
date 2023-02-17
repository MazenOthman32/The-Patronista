import 'package:flutter/material.dart';

import '../constant/background.dart';
import '../constant/buttons.dart';
import '../constant/list_tile.dart';
import '../constant/text_form_field.dart';
import 'about_screen.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'HomeScreen';
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //static const IconData ic = IconData(0xf064c);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
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
                                  fontWeight: FontWeight.w500, fontSize: 20 ,color:  Colors.white),
                            ),
                          ],
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
                  const SizedBox(height: 20),
                  SizedBox(
                      height: 45,
                      child: TextFormFiled(
                          label: "Search",
                          iconShowPass: Icons.search,
                          keyboard: TextInputType.text,
                          iconHidePass: null)),
                  const SizedBox(height: 30),
                  const ListTiles(
                      numbers: 8,
                      name: 'Julia Liam ',
                      image: "assets/persons/pertwo.png"),
                  const ListTiles(
                      numbers: 2,
                      name: 'Klara James',
                      image: "assets/persons/images.png"),
                  const ListTiles(
                      numbers: 4,
                      name: 'Olivia Locus',
                      image: "assets/persons/pertwo.png"),
                  const ListTiles(
                      numbers: 8,
                      name: 'Emma Henry ',
                      image: "assets/persons/perfive.png"),
                  const ListTiles(
                      numbers: 5,
                      name: 'Mia Benjamin',
                      image: "assets/persons/perfour.png"),
                  const ListTiles(
                      numbers: 3,
                      name: 'Raya Ozzy',
                      image: "assets/persons/pernine.png"),
                  const ListTiles(
                      numbers: 5,
                      name: 'Flora Mac',
                      image: "assets/persons/perone.png"),
                  const ListTiles(
                      numbers: 4,
                      name: 'Vida Gian',
                      image: "assets/persons/perseven.png"),
                  const ListTiles(
                      numbers: 9,
                      name: 'Elia Evander',
                      image: "assets/persons/persix.png"),
                  const ListTiles(
                      numbers: 8,
                      name: 'Julia Liam ',
                      image: "assets/persons/perten.png"),
                  const ListTiles(
                      numbers: 2,
                      name: 'Klara James',
                      image: "assets/persons/perthree.png"),
                  const ListTiles(
                      numbers: 4,
                      name: 'Olivia Locus',
                      image: "assets/persons/pertwo.png"),
                  const ListTiles(
                      numbers: 8,
                      name: 'Emma Henry ',
                      image: "assets/persons/pertwo.png"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
