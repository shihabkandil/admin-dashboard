import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'sign_up/sign_up_form.dart';
import 'sign_in/sign_in_form.dart';
import '../../../../common/extensions/widgets_extensions.dart';
import '../../../../common/constants/theme/app_theme_data.dart';
import '../../../../gen/assets.gen.dart';

class AuthWideBody extends StatefulWidget {
  const AuthWideBody({super.key});

  @override
  State<AuthWideBody> createState() => _AuthWideBodyState();
}

class _AuthWideBodyState extends State<AuthWideBody> {
  bool isSignIn = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Assets.images.banner.image(fit: BoxFit.fill),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "INSPIRED BY THE FUTURE:",
                    style: context.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "THE VISION UI DASHBOARD",
                    style: context.textTheme.headlineLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: SizedBox(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      final offsetAnimation = Tween<Offset>(
                        begin: const Offset(0.5, 0.0),
                        end: const Offset(0.0, 0.0),
                      ).animate(animation);
                      return SlideTransition(
                        position: offsetAnimation,
                        child: child,
                      );
                    },
                    child: isSignIn ? const SignInForm() : const SignUpForm(),
                  ),
                  RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: context.textTheme.labelMedium?.copyWith(
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign in",
                          style: context.textTheme.labelMedium?.copyWith(
                            color: Colors.white,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                isSignIn = !isSignIn;
                              });
                            },
                        ),
                      ],
                    ),
                  ),
                  12.verticalSpace,
                  const Spacer(),
                  Text(
                    "Designed by Simmmple & Creative Tim",
                    style: context.textTheme.bodySmall,
                  ),
                  Text(
                    "@2024, Developed by Shihab Kandil",
                    style: context.textTheme.bodySmall?.copyWith(
                      color: Colors.blue,
                    ),
                  ),
                  20.verticalSpace,
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
