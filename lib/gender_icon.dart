import 'package:flutter/material.dart';

class GenderIcon extends StatelessWidget {
  const GenderIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(100, 100), // Set the size of the icon
      painter: GenderIconPainter(),
    );
  }
}

class GenderIconPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0;

    // Draw the female circle
    final femaleCircleCenter = Offset(size.width * 0.3, size.height * 0.6);
    canvas.drawCircle(femaleCircleCenter, size.width * 0.2, paint);

    // Draw the female cross
    canvas.drawLine(
      Offset(femaleCircleCenter.dx, femaleCircleCenter.dy + size.width * 0.2),
      Offset(femaleCircleCenter.dx, femaleCircleCenter.dy + size.width * 0.4),
      paint,
    );
    canvas.drawLine(
      Offset(femaleCircleCenter.dx - size.width * 0.1,
          femaleCircleCenter.dy + size.width * 0.3),
      Offset(femaleCircleCenter.dx + size.width * 0.1,
          femaleCircleCenter.dy + size.width * 0.3),
      paint,
    );

    // Draw the male circle
    final maleCircleCenter = Offset(size.width * 0.6, size.height * 0.4);
    canvas.drawCircle(maleCircleCenter, size.width * 0.2, paint);

    // Draw the male arrow
    canvas.drawLine(
      Offset(maleCircleCenter.dx + size.width * 0.14,
          maleCircleCenter.dy - size.width * 0.14),
      Offset(maleCircleCenter.dx + size.width * 0.3,
          maleCircleCenter.dy - size.width * 0.3),
      paint,
    );
    canvas.drawLine(
      Offset(maleCircleCenter.dx + size.width * 0.3,
          maleCircleCenter.dy - size.width * 0.3),
      Offset(maleCircleCenter.dx + size.width * 0.26,
          maleCircleCenter.dy - size.width * 0.1),
      paint,
    );
    canvas.drawLine(
      Offset(maleCircleCenter.dx + size.width * 0.3,
          maleCircleCenter.dy - size.width * 0.3),
      Offset(maleCircleCenter.dx + size.width * 0.1,
          maleCircleCenter.dy - size.width * 0.26),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
