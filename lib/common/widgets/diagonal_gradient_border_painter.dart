import 'package:flutter/material.dart';

class DiagonalGradientBorderPainter extends CustomPainter {
  final Gradient gradient;
  final double borderWidth;
  final Radius radius;

  DiagonalGradientBorderPainter({
    super.repaint,
    required this.gradient,
    required this.radius,
    required this.borderWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    final borderRect = rect.deflate(borderWidth / 2);

    final paint = Paint()
      ..shader = gradient.createShader(borderRect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth;

    canvas.drawRRect(
      RRect.fromRectAndRadius(rect, radius),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
