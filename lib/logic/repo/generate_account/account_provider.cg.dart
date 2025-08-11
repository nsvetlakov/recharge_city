import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_app_for_red/data/repo/remote/remote_repo_impl.cg.dart';
import 'package:test_app_for_red/domain/account/account.cg.dart';

part 'gen/account_provider.cg.g.dart';

/// Сервис модели аккаунта для получения/сохранения данных о пользователе
/// в локальном хранилище
@Riverpod(keepAlive: true)
class AccountService extends _$AccountService {
  @override
  Future<Account> build() {
    return Future.value(Account.empty);
  }

  Future<void> fetchAccount() async {
    final res = await ref
        .read(remoteRepoProvider)
        .generateAccount
        .generateAccount();

    state = AsyncData(res);
  }
}
