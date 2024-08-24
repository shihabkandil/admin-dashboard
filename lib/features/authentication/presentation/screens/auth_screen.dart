import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../common/constants/theme/app_colors.dart';
import '../../../../common/presentation/widgets/responsive_builder.dart';
import '../widgets/auth_mobile_body.dart';
import '../widgets/auth_wide_body.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.backgroundColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ResponsiveWidget(
          wideScreen: AuthWideBody(),
          mobileScreen: SignUpMobileBody(),
        ),
      ),
    );
  }
}
