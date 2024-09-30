import 'dart:math';

import 'package:flutter/material.dart';

class ArcProgressClipper extends CustomPainter {
  final double percentage;
  final Color color;
  final Color backgroundColor;
  final double thickness;

  ArcProgressClipper({
    required this.color,
    required this.thickness,
    required this.backgroundColor,
    required this.percentage,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.width / 2;

    final progressPaint = Paint()
      ..strokeWidth = thickness
      ..shader = LinearGradient(
        begin: Alignment.bottomLeft,
        colors: [Colors.transparent, color],
        stops: const [0, 0.7],
      ).createShader(
        Rect.fromCircle(
          center: Offset(radius, radius),
          radius: radius,
        ),
      )
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final backgroundPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.bottomLeft,
        colors: [Colors.transparent, backgroundColor],
        stops: const [0, 0.7],
      ).createShader(
        Rect.fromCircle(
          center: Offset(radius, radius),
          radius: radius,
        ),
      )
      ..strokeWidth = thickness
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    const double startAngle = pi;
    double endSweepAngle = pi;

    double percentageAngle = endSweepAngle * (percentage / 100);

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      startAngle,
      endSweepAngle,
      false,
      backgroundPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: Offset(radius, radius), radius: radius),
      startAngle,
      percentageAngle,
      false,
      progressPaint,
    );

    canvas.clipRect(Rect.fromLTWH(0, size.width / 2, size.width, size.width));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
