import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_template/common/widgets/diagonal_border_box.dart';

import '../../../../../common/constants/theme/app_theme_data.dart';
import '../../../../../common/extensions/widgets_extensions.dart';
import '../../../../../common/widgets/app_text_form_field.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        child: DiagonalBorderBox(
          radius: Radius.circular(14),
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Nice to see you!",
                              style: context.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Enter your email and password to sign in",
                              style: context.textTheme.labelMedium?.copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
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
                              text: "Sign in",
                              style: context.textTheme.labelMedium?.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
