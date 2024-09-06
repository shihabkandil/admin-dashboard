import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/theme/app_colors.dart';
import '../../../../common/extensions/widgets_extensions.dart';
import '../widgets/header_cards_list.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
        children: [
          CircleAvatar(
            radius: MediaQuery.sizeOf(context).width / 2,
            backgroundColor: AppColors.blue,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaY: 400,
              sigmaX: 300,
              tileMode: TileMode.decal,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                20.verticalSpace,
                const HeaderCardsList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
