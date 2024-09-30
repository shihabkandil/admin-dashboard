import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/constants/theme/app_colors.dart';
import '../../../../common/presentation/widgets/responsive_widget.dart';
import '../cubits/auth_switcher_cubit/auth_switcher_cubit.dart';
import '../widgets/auth_mobile_body.dart';
import '../widgets/auth_wide_body.dart';

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: AppColors.backgroundColors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: BlocProvider(
          create: (context) => AuthSwitcherCubit(),
          child: const ResponsiveWidget(
            wide: AuthWideBody(),
            mobile: AuthMobileBody(),
          ),
        ),
      ),
    );
  }
}
