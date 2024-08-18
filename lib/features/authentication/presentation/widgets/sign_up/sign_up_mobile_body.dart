import 'package:flutter/widgets.dart';
import 'package:flutter_app_template/features/authentication/presentation/widgets/sign_in/sign_in_form.dart';

import '../../../../../gen/assets.gen.dart';

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
          child: SignInForm(),
        ),
      ],
    );
  }
}
