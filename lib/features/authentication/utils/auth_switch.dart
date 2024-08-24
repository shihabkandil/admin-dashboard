enum AuthSwitch {
  signIn,
  signUp;

  bool get isSignIn => this == AuthSwitch.signIn;

  bool get isSignUp => this == AuthSwitch.signUp;
}
