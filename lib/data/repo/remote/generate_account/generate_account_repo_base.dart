import 'package:test_app_for_red/domain/account/account.cg.dart';

/// Интерфейс generate-account репозитория
abstract interface class GenerateAccountRepo {
  /// generate-account
  Future<Account> generateAccount();
}
