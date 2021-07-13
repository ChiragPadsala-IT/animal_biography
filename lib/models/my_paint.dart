import 'package:flutter/material.dart';

class MyPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint brush1 = Paint()
      ..color = Colors.white60
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;

    Path path = Path();
    path.moveTo(size.width * 0.80, size.height);
    path.quadraticBezierTo(
        size.width * 0.85, size.height * 0.88, size.width, size.height * 0.88);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, brush1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}