import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/constants/theme/app_theme_data.dart';
import '../../../../../common/extensions/widgets_extensions.dart';
import '../../../../../common/presentation/widgets/app_text_form_field.dart';
import '../../../../../common/presentation/widgets/diagonal_border_box.dart';
import '../../cubits/auth_switcher_cubit/auth_switcher_cubit.dart';
import '../auth_header.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: DiagonalBorderBox(
        radius: const Radius.circular(14),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const AuthBoxHeader(
                      title: 'Welcome back !',
                      subTitle: 'Enter your email & password to continue.',
                    ),
                    14.verticalSpace,
                    const AppTextFormField(
                      hintText: "Your email address",
                      errorText: "",
                      header: "Email",
                    ),
                    14.verticalSpace,
                    const AppTextFormField(
                      hintText: "Your password",
                      errorText: "",
                      header: "Password",
                    ),
                    14.verticalSpace,
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text(
                          "Remember me",
                          style: context.textTheme.labelMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    14.verticalSpace,
                    MaterialButton(
                      minWidth: 300,
                      height: 50,
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      onPressed: () {},
                      child: Text(
                        "SIGN IN",
                        style: context.textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    14.verticalSpace,
                    RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: context.textTheme.labelMedium?.copyWith(
                          color: Colors.grey,
                        ),
                        children: [
                          TextSpan(
                            text: "Sign Up Now!",
                            style: context.textTheme.labelMedium?.copyWith(
                              color: Colors.white,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  context.read<AuthSwitcherCubit>().toggle(),
                          ),
                        ],
                      ),
                    ),
                    14.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
