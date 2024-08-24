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

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AuthBoxHeader(
                    title: 'Nice to see you!',
                    subTitle: 'Create your account to manage your dashboard.',
                  ),
                  14.verticalSpace,
                  const AppTextFormField(
                    hintText: "Your full name",
                    errorText: "",
                    header: "Name",
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
                  6.verticalSpace,
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
                      "SIGN UP",
                      style: context.textTheme.labelMedium?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  14.verticalSpace,
                  RichText(
                    text: TextSpan(
                      text: "Already have an account? ",
                      style: context.textTheme.labelMedium?.copyWith(
                        color: Colors.grey,
                      ),
                      children: [
                        TextSpan(
                          text: "Sign In",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
