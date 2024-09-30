import 'package:flutter/material.dart';

import '../../../../common/constants/theme/app_colors.dart';
import '../../../../common/constants/theme/app_theme_data.dart';
import '../../../../common/extensions/context_extensions.dart';
import '../../../../common/extensions/widgets_extensions.dart';
import '../../../../gen/assets.gen.dart';

class WelcomeCard extends StatelessWidget {
  const WelcomeCard({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Assets.images.welcomeBackground.image(fit: BoxFit.fill),
          FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    context.localizer.welcomeBack,
                    style: context.textTheme.labelMedium!.copyWith(
                      color: AppColors.grayishBlue,
                    ),
                  ),
                  6.verticalSpace,
                  Text(
                    name,
                    style: context.textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  16.verticalSpace,
                  Text(
                    context.localizer.gladToSeeYou,
                    textAlign: TextAlign.start,
                    style: context.textTheme.bodySmall!.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
