import 'package:flutter/widgets.dart';

import 'sign_up_form.dart';

class SignUpMobileBody extends StatelessWidget {
  const SignUpMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: SignUpForm(),
    );
  }
}
