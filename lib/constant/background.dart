import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff37B98B),
            Color(0xff38B299),
            Color(0xff39AAA8),
          ])),
      child: Stack(
        children: [
          Transform.rotate(
            angle: 0.1,
            child: Container(
              height: size.height,
              width: size.width,
              child: CustomPaint(
                painter: RPSCustomPainter(),
              ),
            ),
          ),
          Transform.rotate(
            angle: -0.4,
            child: Container(
              height: size.height,
              width: size.width,
              child: CustomPaint(
                painter: RPSCustomPainter2(),
              ),
            ),
          ),
          Transform.rotate(
            angle: 2.5,
            child: Container(
              height: size.height,
              width: size.width,
              child: CustomPaint(
                painter: RPSCustomPainter3(),
              ),
            ),
          ),
          Transform.rotate(
            angle: 12.4,
            child: Container(
              height: size.height,
              width: size.width,
              child: CustomPaint(
                painter: RPSCustomPainter4(),
              ),
            ),
          ),
          Transform.rotate(
            angle: 12.2,
            child: Container(
              height: size.height,
              width: size.width,
              child: CustomPaint(
                painter: RPSCustomPainter5(),
              ),
            ),
          ),
          Transform.rotate(
            angle: -0.6,
            child: Container(
              height: size.height,
              width: size.width,
              child: CustomPaint(
                painter: RPSCustomPainter6(),
              ),
            ),
          ),
          Transform.rotate(
            angle: 12.75,
            child: Container(
              height: size.height,
              width: size.width,
              child: CustomPaint(
                painter: RPSCustomPainter7(),
              ),
            ),
          ),
          Transform.rotate(
            angle: 12.5,
            child: Container(
              height: size.height,
              width: size.width,
              child: CustomPaint(
                painter: RPSCustomPainter8(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(37, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1425429, size.height * 0.6919455);
    path0.lineTo(size.width * 0.1376286, size.height * 0.8704727);
    path0.lineTo(size.width * 0.5023714, size.height * 0.8704727);
    path0.quadraticBezierTo(size.width * 0.5005429, size.height * 0.8042000,
        size.width * 0.4999143, size.height * 0.7818909);
    path0.cubicTo(
        size.width * 0.4066000,
        size.height * 0.7918909,
        size.width * 0.3836857,
        size.height * 0.6926364,
        size.width * 0.3829714,
        size.height * 0.6506909);
    path0.cubicTo(
        size.width * 0.3536286,
        size.height * 0.6399273,
        size.width * 0.2892286,
        size.height * 0.6470545,
        size.width * 0.2598857,
        size.height * 0.6368000);
    path0.quadraticBezierTo(size.width * 0.2548857, size.height * 0.6771273,
        size.width * 0.1425429, size.height * 0.6919455);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(37, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.4747429, size.height * 0.5898182);
    path0.quadraticBezierTo(size.width * 0.5650000, size.height * 0.7194182,
        size.width * 0.5908571, size.height * 0.7643636);
    path0.lineTo(size.width * 0.8011429, size.height * 0.7611091);
    path0.quadraticBezierTo(size.width * 0.8987429, size.height * 0.6309091,
        size.width * 0.9309714, size.height * 0.5862727);
    path0.cubicTo(
        size.width * 0.8251143,
        size.height * 0.5792727,
        size.width * 0.7890000,
        size.height * 0.4934909,
        size.width * 0.6886000,
        size.height * 0.5014545);
    path0.cubicTo(
        size.width * 0.6029714,
        size.height * 0.4906364,
        size.width * 0.5486000,
        size.height * 0.5889091,
        size.width * 0.4747429,
        size.height * 0.5898182);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(37, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.2771429, size.height * 0.7327273);
    path0.lineTo(size.width * 0.2971429, size.height * 0.8181818);
    path0.lineTo(size.width * 0.6285714, size.height * 0.8181818);
    path0.lineTo(size.width * 0.6400000, size.height * 0.7309091);
    path0.quadraticBezierTo(size.width * 0.5278571, size.height * 0.7004545,
        size.width * 0.5057143, size.height * 0.6890909);
    path0.quadraticBezierTo(size.width * 0.4371429, size.height * 0.6859091,
        size.width * 0.4028571, size.height * 0.6909091);
    path0.lineTo(size.width * 0.2771429, size.height * 0.7327273);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter5 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(37, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.3457143, size.height * 0.6927273);
    path0.quadraticBezierTo(size.width * 0.3435714, size.height * 0.9000000,
        size.width * 0.3428571, size.height * 0.9690909);
    path0.lineTo(size.width * 0.6257143, size.height * 0.9672727);
    path0.lineTo(size.width * 0.6285714, size.height * 0.7854545);
    path0.quadraticBezierTo(size.width * 0.5414286, size.height * 0.7809091,
        size.width * 0.5428571, size.height * 0.6727273);
    path0.quadraticBezierTo(size.width * 0.5157143, size.height * 0.6677273,
        size.width * 0.4342857, size.height * 0.6527273);
    path0.quadraticBezierTo(size.width * 0.4121429, size.height * 0.6900000,
        size.width * 0.3457143, size.height * 0.6927273);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter6 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(37, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.1400000, size.height * 0.3890909);
    path0.lineTo(size.width * 0.1571429, size.height * 0.4436364);
    path0.lineTo(size.width * 0.5800000, size.height * 0.4472727);
    path0.lineTo(size.width * 0.5971429, size.height * 0.3854545);
    path0.quadraticBezierTo(size.width * 0.4778571, size.height * 0.3709091,
        size.width * 0.4285714, size.height * 0.3654545);
    path0.quadraticBezierTo(size.width * 0.3742857, size.height * 0.4077273,
        size.width * 0.2828571, size.height * 0.3672727);
    path0.lineTo(size.width * 0.1400000, size.height * 0.3890909);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(37, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.7525000, size.height * 0.1054545);
    path0.quadraticBezierTo(size.width * 0.7787500, size.height * 0.1995455,
        size.width * 0.7200000, size.height * 0.2000000);
    path0.lineTo(size.width * 0.8175000, size.height * 0.4581818);
    path0.lineTo(size.width * 0.9200000, size.height * 0.4545455);
    path0.lineTo(size.width * 0.9700000, size.height * 0.1745455);
    path0.quadraticBezierTo(size.width * 0.9700000, size.height * 0.1181818,
        size.width * 0.9500000, size.height * 0.1018182);
    path0.cubicTo(
        size.width * 0.9156250,
        size.height * 0.1027273,
        size.width * 0.8500000,
        size.height * 0.1040909,
        size.width * 0.7525000,
        size.height * 0.1054545);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter7 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(37, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.3150000, size.height * 0.1563636);
    path0.lineTo(size.width * 0.3125000, size.height * 0.2109091);
    path0.quadraticBezierTo(size.width * 0.3550000, size.height * 0.2240909,
        size.width * 0.3700000, size.height * 0.2327273);
    path0.quadraticBezierTo(size.width * 0.3843750, size.height * 0.2240909,
        size.width * 0.4300000, size.height * 0.2109091);
    path0.lineTo(size.width * 0.4400000, size.height * 0.1563636);
    path0.lineTo(size.width * 0.3150000, size.height * 0.1563636);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainter8 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(37, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0950000, size.height * 0.0854545);
    path0.lineTo(size.width * 0.1125000, size.height * 0.1290909);
    path0.lineTo(size.width * 0.3225000, size.height * 0.1309091);
    path0.quadraticBezierTo(size.width * 0.3450000, size.height * 0.0968182,
        size.width * 0.3525000, size.height * 0.0854545);
    path0.quadraticBezierTo(size.width * 0.2056250, size.height * 0.1272727,
        size.width * 0.0950000, size.height * 0.0854545);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
