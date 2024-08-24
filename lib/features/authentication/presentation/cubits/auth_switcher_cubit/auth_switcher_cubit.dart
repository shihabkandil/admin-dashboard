import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/auth_switch.dart';

part 'auth_switcher_state.dart';
part 'auth_switcher_cubit.freezed.dart';

class AuthSwitcherCubit extends Cubit<AuthSwitcherState> {
  AuthSwitcherCubit()
      : super(const AuthSwitcherState(current: AuthSwitch.signIn));

  void toggle() {
    switch (state.current) {
      case AuthSwitch.signIn:
        emit(const AuthSwitcherState(current: AuthSwitch.signUp));
      case AuthSwitch.signUp:
        emit(const AuthSwitcherState(current: AuthSwitch.signIn));
    }
  }
}
