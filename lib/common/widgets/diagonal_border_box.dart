import 'dart:math';

import 'package:flutter/material.dart';

import 'diagonal_gradient_border_painter.dart';

class DiagonalBorderBox extends StatelessWidget {
  const DiagonalBorderBox({
    super.key,
    required this.child,
    required this.radius,
  });

  final Widget child;
  final Radius radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DiagonalGradientBorderPainter(
        borderWidth: 1.25,
        gradient: LinearGradient(
          colors: [
            const Color(0xff582CFF).withOpacity(0.8),
            Colors.grey.withOpacity(0.45),
            const Color(0xff582CFF).withOpacity(0.8),
          ],
          transform: const GradientRotation(pi / 4),
        ),
        radius: radius,
      ),
      child: child,
    );
  }
}
