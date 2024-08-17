import 'package:flutter/material.dart';

import '../../../../../common/constants/theme/app_theme_data.dart';
import '../../../../../common/extensions/widgets_extensions.dart';
import '../../../../../common/widgets/app_text_form_field.dart';
import '../../../../../common/widgets/diagonal_border_box.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 400,
        child: DiagonalBorderBox(
          radius: const Radius.circular(14),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
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
                    const Text("Remember me"),
                  ],
                ),
                14.verticalSpace,
                MaterialButton(
                  minWidth: 300,
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onPressed: () {},
                  child: const Text("SIGN UP"),
                ),
                14.verticalSpace,
                RichText(
                  text: TextSpan(
                    text: "Already have an account?",
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: "Sign in",
                        style: context.textTheme.bodyMedium?.copyWith(
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
    );
  }
}
