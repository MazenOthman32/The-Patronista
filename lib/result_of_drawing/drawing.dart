import 'package:flutter/material.dart';
import 'package:patronist/models/baisc_skirt_model.dart';
import 'package:patronist/views/persons_data.dart';
import '../constant/background.dart';
import '../constant/buttons.dart';

class DrawingNow extends StatelessWidget {
  static const routeName = 'DrawingNow';
  const DrawingNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final args = ModalRoute.of(context)!.settings.arguments as BasicSkirtModel;

    return Scaffold(
      body: Stack(
        children: [
          MainPage(size: size),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.all(24),
                height: size.height * 0.7,
                width: size.width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.0),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                    width: 4.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 40, left: 120, right: 100, bottom: 40),
                  child: CustomPaint(
                    painter: RPSCustomPainter(
                      height: args.height,
                      waist: args.waist,
                      highHip: args.highHip,
                      hip: args.hip,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DefaultButton(text: "Save to Device", onPressedFun: () {}),
                    DefaultButton(
                      text: "Add to Customer",
                      onPressedFun: () {
                        Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  final double fac = 5;
  final double height;
  final double waist;
  final double highHip;
  final double hip;

  RPSCustomPainter({
    required this.height,
    required this.waist,
    required this.highHip,
    required this.hip,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.5;

    Path path = Path()
      ..moveTo(0, 0) // A
      ..lineTo(0, height * fac) // Z
      ..lineTo(((0.25 * hip) + 2) * fac, height * fac) // X
      ..lineTo(((0.25 * hip) + 2) * fac, highHip * fac) // F
      ..quadraticBezierTo(
          ((0.20 * hip) + 2) * fac * 1.2, 0, ((0.25 * waist) + 2) * fac, 0) //B
      ..lineTo(((0.125 * waist) + 2.5) * fac, 0) // M
      ..lineTo(((0.125 * waist) + 1) * fac, 10 * fac) // D
      ..lineTo(((0.125 * waist) - 2.5) * fac, 0) // M
      ..close();

    canvas.drawPath(path, paint);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 0, 0, 0)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.5;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
