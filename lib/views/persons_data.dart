import 'package:flutter/material.dart';
import 'package:patronist/constant/current_user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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

  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(CurrentUser.get()!.id);

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
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          child: IconButton(
                            icon: Image.asset("assets/about.png"),
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, AboutScreen.routeName);
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
                          iconHidePass: null)),
                  const SizedBox(height: 30),
                  FutureBuilder(
                    future: FirebaseFirestore.instance
                        .collection('users')
                        .doc(CurrentUser.get()!.id)
                        .collection('customer')
                        .get(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data?.docs.length,
                        itemBuilder: (context, index) {
                          return ListTiles(
                            code: snapshot.data?.docs[index]['code'],
                            name: snapshot.data?.docs[index]['name'],
                            image: "assets/persons/pertwo.png",
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
    );
  }
}
