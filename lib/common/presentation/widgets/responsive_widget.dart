import 'package:admin_dashboard/common/constants/constants.dart';
import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget wide;
  final Widget mobile;

  const ResponsiveWidget({
    super.key,
    required this.wide,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > Constants.wideScreenBreakpointPixels) {
          return wide;
        } else {
          return mobile;
        }
      },
    );
  }
}
