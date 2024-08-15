import 'dart:math';

import 'package:flutter/material.dart';

import '../constants/theme/app_colors.dart';
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
        borderWidth: 2,
        gradient: LinearGradient(
          colors: [
            Colors.white60,
            AppColors.primaryColor.withOpacity(0.2),
            Colors.white60,
          ],
          transform: GradientRotation(pi / 3),
        ),
        radius: radius,
      ),
      child: child,
    );
  }
}
