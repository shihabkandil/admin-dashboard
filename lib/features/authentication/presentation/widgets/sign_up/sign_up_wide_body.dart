import 'package:flutter/material.dart';

import '../../../../../common/extensions/widgets_extensions.dart';
import '../../../../../common/constants/theme/app_theme_data.dart';
import '../../../../../gen/assets.gen.dart';
import 'sign_up_form.dart';

class SignUpWideBody extends StatelessWidget {
  const SignUpWideBody({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome!",
                style: context.textTheme.titleSmall,
              ),
              12.verticalSpace,
              const SignUpForm(),
              12.verticalSpace,
              Text(
                "Designed by Simmmple & Creative Tim",
                style: context.textTheme.bodyMedium,
              ),
              Text(
                "@2024, Developed by Shihab Kandil",
                style: context.textTheme.bodyMedium?.copyWith(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
