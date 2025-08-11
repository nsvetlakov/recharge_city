import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_app_for_red/data/repo/remote/generate_account/generate_account_repo_base.dart';
import 'package:test_app_for_red/data/repo/remote/generate_account/generate_account_repo_impl.cg.dart';
import 'package:test_app_for_red/data/repo/remote/remote_repo_base.cg.dart';

part 'gen/remote_repo_impl.cg.g.dart';

/// Связка риверпода и репозитория
@riverpod
RemoteRepoBase remoteRepo(Ref ref) => RemoteRepo(ref);

/// Реализация репозитория
final class RemoteRepo implements RemoteRepoBase {
  /// Реализация репозитория
  RemoteRepo(this._ref);

  final Ref _ref;

  @override
  GenerateAccountRepo get generateAccount =>
      _ref.read(generateAccountRepoProvider);
}
