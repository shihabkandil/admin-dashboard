import 'package:flutter/widgets.dart';

import '../../../../../gen/assets.gen.dart';
import 'sign_up_form.dart';

class SignUpMobileBody extends StatelessWidget {
  const SignUpMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Assets.images.banner.image(fit: BoxFit.fill),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: SignUpForm(),
        ),
      ],
    );
  }
}
