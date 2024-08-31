import 'package:admin_dashboard/common/extensions/widgets_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/theme/app_colors.dart';
import '../../../../common/constants/theme/app_theme_data.dart';
import '../../../../common/helpers/format_helper.dart';

class HeaderAnalyticsCard extends StatelessWidget {
  const HeaderAnalyticsCard({
    super.key,
    required this.title,
    required this.percentage,
    required this.value,
    required this.icon,
  });

  final String title;
  final double percentage;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: DecoratedBox(
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                AppColors.primaryColor,
                AppColors.primaryColorDark,
              ],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    title,
                    style: context.textTheme.labelMedium
                        ?.copyWith(color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Text(
                        value,
                        style: context.textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      12.horizontalSpace,
                      Text(
                        FormatHelper.formatPercentage(percentage),
                        style: context.textTheme.labelMedium?.copyWith(
                          color: percentage > 0 ? Colors.green : Colors.red,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Color getPercentageColor(double percentage) {
    if (percentage > 0) {
      return Colors.green;
    } else if (percentage < 0) {
      return Colors.red;
    }
    return Colors.grey;
  }
}
