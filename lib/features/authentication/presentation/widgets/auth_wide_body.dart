import 'package:flutter/material.dart';

import '../../../../common/extensions/widgets_extensions.dart';
import '../../../../common/constants/theme/app_theme_data.dart';
import '../../../../gen/assets.gen.dart';
import 'auth_animated_switcher.dart';

class AuthWideBody extends StatelessWidget {
  const AuthWideBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Assets.images.banner.image(fit: BoxFit.fill),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "INSPIRED BY THE FUTURE:",
                    style: context.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "THE VISION UI DASHBOARD",
                    style: context.textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: SizedBox(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const AuthAnimatedSwitcher(),
                  12.verticalSpace,
                  const Spacer(),
                  Text(
                    "Designed by Simmmple & Creative Tim",
                    style: context.textTheme.bodySmall,
                  ),
                  Text(
                    "@2024, Developed by Shihab Kandil",
                    style: context.textTheme.bodySmall?.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                  20.verticalSpace,
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
