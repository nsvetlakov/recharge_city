final class AppConfig {
  AppConfig._instantiate();

  /// Синглтон конфигурации
  static final AppConfig instance = AppConfig._instantiate();

  static const String apiEndpoint =
      'https://goldfish-app-3lf7u.ondigitalocean.app';

  static const googlePlay =
      'https://play.google.com/store/apps/details?id=com.recharge.city';
  static const appStore =
      'https://apps.apple.com/us/app/recharge-city/id1594160460';
}
