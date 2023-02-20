import 'package:flutter/material.dart';

double fac = 5;
double height = 60;
double waist = 60;
double highHip = 20;
double hip = 100;

class Drawing extends StatelessWidget {
  static const routeName = 'drawing';
  const Drawing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomPaint(
          painter: RPSCustomPainter(),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
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
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.5;
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
