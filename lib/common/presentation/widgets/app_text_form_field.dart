import 'package:flutter/material.dart';

import '../../constants/theme/app_theme_data.dart';
import 'diagonal_border_box.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    required this.errorText,
    required this.header,
    this.onChanged,
    this.onSubmitted,
  });

  final String hintText;
  final String errorText;
  final String header;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;

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
            onTapOutside: (event) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            onChanged: onChanged,
            onFieldSubmitted: onSubmitted,
          ),
        ),
      ],
    );
  }
}
