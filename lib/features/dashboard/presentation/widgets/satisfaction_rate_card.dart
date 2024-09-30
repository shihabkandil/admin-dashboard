import 'package:flutter/material.dart';

import '../../../../common/constants/theme/app_colors.dart';
import '../../../../common/constants/theme/app_theme_data.dart';
import '../../../../common/extensions/context_extensions.dart';
import '../../../../common/extensions/widgets_extensions.dart';
import 'satisfaction_progress_indicator.dart';

class SatisfactionRateCard extends StatelessWidget {
  const SatisfactionRateCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: SizedBox(
        width: 350,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: AppColors.gradientCardColors,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.localizer.satisfactionRate,
                  style: context.textTheme.titleLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  context.localizer.fromAllProjects,
                  style: context.textTheme.titleMedium!.copyWith(
                    color: Colors.grey,
                  ),
                ),
                24.verticalSpace,
                const SatisfactionProgressIndicator(percentage: 76),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
