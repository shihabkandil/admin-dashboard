import 'package:flutter/material.dart';

import '../../../../../common/extensions/widgets_extensions.dart';
import '../../../../../common/constants/theme/app_theme_data.dart';
import '../../../../../gen/assets.gen.dart';

class SignUpWideBody extends StatelessWidget {
  const SignUpWideBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Assets.images.banner.image(fit: BoxFit.fitWidth),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome!",
                  style: context.textTheme.titleSmall,
                ),
                22.verticalSpace,
                Container(
                  height: 700,
                  width: 450,
                  color: Colors.blue,
                ),
                Text(
                  "Designed by Simmmple & Creative Tim",
                  style: context.textTheme.bodyMedium,
                ),
                Text(
                  "@2024, Developed by Shihab Kandil",
                  style: context.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
