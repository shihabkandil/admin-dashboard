import 'package:admin_dashboard/common/extensions/widgets_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/theme/app_colors.dart';
import '../../../../common/constants/theme/app_theme_data.dart';
import '../../../../common/extensions/context_extensions.dart';
import '../../../../gen/assets.gen.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 650,
      height: 340,
      child: DecoratedBox(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Assets.images.welcomeBackground.image(fit: BoxFit.fill),
            Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localizer.welcomeBack,
                    style: context.textTheme.labelLarge!.copyWith(
                      color: AppColors.grayishBlue,
                    ),
                  ),
                  6.verticalSpace,
                  Text(
                    name,
                    style: context.textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  16.verticalSpace,
                  Text(
                    context.localizer.gladToSeeYou,
                    textAlign: TextAlign.start,
                    style: context.textTheme.bodyLarge!.copyWith(
                      color: AppColors.grayishBlue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
