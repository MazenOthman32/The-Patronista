import 'package:flutter/material.dart';

class TextFormFiled extends StatelessWidget {
  final String label;
  final IconData? iconShowPass;
  final IconData? iconHidePass;
  final TextInputType keyboard;
  Function(String)? onChanged;
  bool? show;

  TextFormFiled(
      {super.key,
      required this.label,
      required this.iconShowPass,
      required this.iconHidePass,
      required this.keyboard,
      this.onChanged,
      this.show});

  var visabel = false;

  Color w = Colors.white;
  Color b = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return 'Felid iS Required';
          }
          return null;
        },
        onChanged: onChanged,
        obscuringCharacter: "*",
        obscureText: show ??= false,
        cursorColor: w,
        keyboardType: keyboard,
        decoration: InputDecoration(
          labelText: label,
          focusColor: w,
          labelStyle: TextStyle(color: w),
          suffixIcon: IconButton(
            icon: visabel
                ? Icon(
                    iconHidePass,
                    color: w,
                  )
                : Icon(
                    iconShowPass,
                    color: w,
                  ),
            onPressed: () {
              {
                visabel = !visabel;
              }
            },
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: const BorderSide(
                color: Colors.white,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(
                color: w,
              )),
        ),
      ),
    );
  }
}
