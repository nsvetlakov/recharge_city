import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_app_for_red/data/repo/local/local_repository.dart';

/// Имплементация локального репозитория
/// как адаптера к Preference
class SharedPreferenceRepositoryImpl implements LocalRepository {
  SharedPreferences? _pref;

  static const _powerBank = 'powerBank';
  static const _accessToken = 'accessToken';
  static const _refreshToken = 'refreshToken';

  @override
  Future<String> writeIdPowerBank(String s) async {
    _saveString(_powerBank, s);
    return s;
  }

  @override
  Future<String> readIdPowerBank() async {
    return Future.value(_getString(_powerBank));
  }

  @override
  Future<String> writeAccessToken(String s) async {
    _saveString(_accessToken, s);
    return s;
  }

  @override
  Future<String> readAccessToken() async {
    return Future.value(_getString(_accessToken));
  }

  @override
  Future<String> writeRefreshToken(String s) async {
    _saveString(_refreshToken, s);
    return s;
  }

  @override
  Future<String> readRefreshToken() async {
    return Future.value(_getString(_refreshToken));
  }

  //////////////////////////////////////////////////////////////////////////////

  Future _init() async {
    _pref ??= await SharedPreferences.getInstance();
    return;
  }

  Future _saveString(String key, String data) async {
    await _init();
    await _pref?.setString(key, data);
  }

  Future<String> _getString(String key, {String? def}) async {
    return _init().then((_) => _pref?.getString(key) ?? def ?? '');
  }

  // Future _saveBool(String key, bool data) async {
  //   await _init();
  //   await _pref?.setBool(key, data);
  // }

  // Future<bool> _getBool(String key, {bool? def}) async {
  //   return _init().then((_) => _pref?.getBool(key) ?? def ?? false);
  // }

  // Future _saveInt(String key, int data) async {
  //   await _init();
  //   await _pref?.setInt(key, data);
  // }

  // Future<int> _getInt(String key) async {
  //   return _init().then((_) => _pref?.getInt(key) ?? 0);
  // }

  // ~ Спрячем базовый интерфейс
}
