import 'package:flutter/material.dart';

import '../../../../common/constants/theme/app_colors.dart';
import '../../../../common/constants/theme/app_theme_data.dart';
import '../../../../common/extensions/context_extensions.dart';
import '../../../../common/presentation/widgets/arc_progress_clipper.dart';

class SatisfactionProgressIndicator extends StatelessWidget {
  const SatisfactionProgressIndicator({super.key, required this.percentage});

  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: 240,
            height: 230,
            child: CustomPaint(
              painter: ArcProgressClipper(
                color: AppColors.blue,
                backgroundColor: AppColors.navyBlue,
                thickness: 18,
                percentage: 76,
              ),
            ),
          ),
        ),
        const Positioned(
          top: 50,
          right: 0,
          left: 0,
          child: CircleAvatar(
            backgroundColor: AppColors.blue,
            maxRadius: 25,
            child: Icon(
              Icons.tag_faces,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
        Positioned(
          top: 130,
          left: 0,
          right: 0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.primaryColor.withOpacity(0.65),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "0%",
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Text(
                          "$percentage%",
                          style: context.textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          context.localizer.basedOnLikes,
                          style: context.textTheme.titleSmall?.copyWith(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    "100%",
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
