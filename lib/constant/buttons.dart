import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Function() onPressedFun;
  final String text;

  const DefaultButton(
      {Key? key, required this.text, required this.onPressedFun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
      height: 70,
      width: size.width / 1.5,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
          backgroundColor: MaterialStateProperty.resolveWith(
              (states) => Colors.white.withOpacity(0.3)),
        ),
        onPressed: onPressedFun,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 15),
        ),
      ),
    );
  }
}

class SmallButton extends StatelessWidget {
  final Function() onPressedFun;
  final String text;

  const SmallButton({Key? key, required this.text, required this.onPressedFun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
      height: 70,
      width: size.width / 2.5,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => const Color(0xff37B98B).withOpacity(0.4),
          ),
        ),
        onPressed: onPressedFun,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 13),
        ),
      ),
    );
  }
}

class SmallButtonBgwhite extends StatelessWidget {
  final Function() onPressedFun;
  final String text;

  const SmallButtonBgwhite(
      {Key? key, required this.text, required this.onPressedFun})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 20),
      height: 70,
      width: size.width / 2.5,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
          backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white.withOpacity(0.4),
          ),
        ),
        onPressed: onPressedFun,
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 13),
        ),
      ),
    );
  }
}

class BackBtton extends StatelessWidget {
  final Function() onPressed;
  const BackBtton({
    super.key, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: Colors.teal.shade200,
          borderRadius: BorderRadius.circular(50),
        ),
        child: TextButton(
            onPressed: onPressed,
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 20,
            )));
  }
}
