import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:test_app_for_red/core/app_config.dart';
import 'package:test_app_for_red/data/dto/account/account.cg.dart';
import 'package:test_app_for_red/data/repo/remote/dio_provider.cg.dart';
import 'package:test_app_for_red/data/repo/remote/generate_account/generate_account_repo_base.dart';
import 'package:test_app_for_red/domain/account/account.cg.dart';

part 'client.cg.dart';
part 'gen/generate_account_repo_impl.cg.g.dart';

/// Провайдер репозитория авторизации
@riverpod
GenerateAccountRepo generateAccountRepo(Ref ref) {
  final dio = ref.watch(dioProvider(AppConfig.apiEndpoint));
  return RemoteGenerateAccountImpl(dio);
}

/// Имплементация удаленного репозитария.
final class RemoteGenerateAccountImpl implements GenerateAccountRepo {
  /// Имплементация удаленного репозитария.
  RemoteGenerateAccountImpl(Dio dio) : _client = _GenerateAccountClient(dio);

  final _GenerateAccountClient _client;

  @override
  Future<Account> generateAccount() async {
    final dto = await _client.generateAccount();
    return dto.toDomain();
  }
}
