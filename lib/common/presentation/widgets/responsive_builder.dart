import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget wideScreen;
  final Widget mobileScreen;

  const ResponsiveWidget({
    super.key,
    required this.wideScreen,
    required this.mobileScreen,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return wideScreen;
        } else {
          return mobileScreen;
        }
      },
    );
  }
}
