import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/theme/app_theme_data.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "App Template",
          style: context.textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: Text(
          "Template",
          style: context.textTheme.bodyLarge?.copyWith(color: Colors.black),
        ),
      ),
    );
  }
}
