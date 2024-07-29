import 'package:envied/envied.dart';

part 'env.g.dart';

/// TODO Create env file with environment variables
@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'BASE_URL', obfuscate: true)
  static String baseUrl = _Env.baseUrl;
  @EnviedField(varName: 'DEV_BASE_URL', obfuscate: true)
  static String devBaseUrl = _Env.devBaseUrl;
}
