import '../../common/constants/endpoints.dart';
import '../constants/secrets/env.dart';

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
        Endpoints.initialize(Env.devBaseUrl);
        break;
      case AppFlavor.production:
        Endpoints.initialize(Env.baseUrl);
    }
  }
}