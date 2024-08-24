import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/auth_switcher_cubit/auth_switcher_cubit.dart';
import 'sign_in/sign_in_form.dart';
import 'sign_up/sign_up_form.dart';

class AuthAnimatedSwitcher extends StatelessWidget {
  const AuthAnimatedSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthSwitcherCubit, AuthSwitcherState>(
      builder: (context, state) => AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: (Widget child, Animation<double> animation) {
          final offsetAnimation = Tween<Offset>(
            begin: const Offset(1, 0.0),
            end: const Offset(0.0, 0.0),
          ).animate(animation);
          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        child: state.current.isSignIn
            ? const SignInForm()
            : const SignUpForm(),
      ),
    );
  }
}
