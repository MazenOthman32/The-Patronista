import 'package:flutter/material.dart';

import '../screens/details_screen.dart';

class ListTiles extends StatelessWidget {
  final String name;
  final String image;
  final int numbers;

  const ListTiles({
    Key? key,
    required this.name,
    required this.image,
    required this.numbers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, Details.routeName);
        },
        leading: Container(
          height: 55,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(
                    image,
                  ),
                  fit: BoxFit.cover)),
        ),
        trailing: const Icon(Icons.arrow_forward_ios ,color: Colors.white, size: 17,),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15 ,color: Colors.white),
        ),
        subtitle: Text("pattern : $numbers" ,style: TextStyle(color: Colors.white.withOpacity(0.7)),),
      ),
    );
  }
}
