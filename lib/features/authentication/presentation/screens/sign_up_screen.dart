import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/responsive_builder.dart';
import '../widgets/sign_up/sign_up_mobile_body.dart';
import '../widgets/sign_up/sign_up_wide_body.dart';

@RoutePage()
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      wideScreen: SignUpWideBody(),
      mobileScreen: SignUpMobileBody(),
    );
  }
}
