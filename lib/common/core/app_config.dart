enum AppFlavor {
  development,
  production,
}

class AppConfig {
  static late final AppFlavor flavor;

  AppConfig._();

  static void initialize({required AppFlavor envFlavor}) {
    flavor = envFlavor;
    switch (envFlavor) {
      case AppFlavor.development:
        break;
      case AppFlavor.production:
        break;
    }
  }
}
