import 'package:flutter/material.dart';

class ShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    var paintCircle = Paint()
      ..color = Colors.teal
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset startingPointHoraizontally = Offset(size.width / 2, size.height / 2);
    Offset endingPointHoraizontally = Offset(size.width / 1.3, size.height / 2);
    Offset startingPointVertically = Offset(size.width / 2, size.height / 2);
    Offset endingPointVertically = Offset(size.width / 2, size.height / 3.0);

    canvas.drawLine(
        startingPointHoraizontally, endingPointHoraizontally, paint);
    canvas.drawLine(startingPointVertically, endingPointVertically, paint);
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), 250, paintCircle);
    // canvas.drawRect(Rect.fromLTWH(0, 0, 100, 100), paint);
    // canvas.drawOval(Rect.fromLTWH(500, 0, 100, 100), paint);
    // canvas.drawArc(Rect.fromLTWH(0, 500, 100, 100), 0, 3.14, false, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
