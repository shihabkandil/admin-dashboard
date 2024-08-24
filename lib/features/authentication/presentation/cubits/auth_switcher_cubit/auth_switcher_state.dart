part of 'auth_switcher_cubit.dart';

@freezed
class AuthSwitcherState with _$AuthSwitcherState {
  const factory AuthSwitcherState({required AuthSwitch current}) =
      _AuthSwitcherState;
}
