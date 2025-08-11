export 'src/shared_pref_repo_impl.dart';

/// Абстракция локального репозитория.
/// [saveProfileDtoString] / [getProfileDtoString]:
///   Предположим - локальный репозиторий манипулирует профилями, как строками.
abstract class LocalRepository {
  Future<String> writeIdPowerBank(String s);
  Future<String> readIdPowerBank();
  Future<String> writeAccessToken(String s);
  Future<String> readAccessToken();
  Future<String> writeRefreshToken(String s);
  Future<String> readRefreshToken();
}
