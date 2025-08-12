import 'package:test_app_for_red/domain/account/account.cg.dart';

/// Интерфейс generate-account репозитория
abstract interface class GenerateAccountRepo {
  /// Запрос на сгенерированный аккаунт
  Future<Account> generateAccount();
}
