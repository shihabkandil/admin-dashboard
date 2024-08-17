import 'package:flutter/material.dart';

import '../../../../../common/extensions/widgets_extensions.dart';
import '../../../../../common/widgets/diagonal_border_box.dart';
import '../../../../../common/constants/theme/app_theme_data.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return DiagonalBorderBox(
      radius: const Radius.circular(14),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const AppTextField(
              hintText: "Your full name",
              errorText: "",
              header: "Name",
            ),
            14.verticalSpace,
            const AppTextField(
              hintText: "Your email address",
              errorText: "",
              header: "Email",
            ),
            14.verticalSpace,
            const AppTextField(
              hintText: "Your password",
              errorText: "",
              header: "Password",
            ),
          ],
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    required this.errorText,
    required this.header,
  });

  final String hintText;
  final String errorText;
  final String header;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text(
            header,
            style: context.textTheme.labelSmall?.copyWith(color: Colors.white),
          ),
        ),
        DiagonalBorderBox(
          radius: const Radius.circular(16),
          child: TextFormField(
            cursorColor: Colors.white,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none),
              hintText: hintText,
              hintStyle: context.textTheme.bodySmall?.copyWith(
                color: Colors.grey,
              ),
              isDense: true,
            ),
            style: context.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
