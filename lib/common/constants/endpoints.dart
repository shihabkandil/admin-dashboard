class Endpoints {
  Endpoints._();

  // ignore: unused_field
  static String _baseUrl = '';

  static void initialize(String envBaseUrl) {
    _baseUrl = envBaseUrl;
  }
}
