part of 'generate_account_repo_impl.cg.dart';

/// RestClient
@RestApi()
abstract interface class _GenerateAccountClient {
  /// RestClient
  factory _GenerateAccountClient(Dio dio) = __GenerateAccountClient;

  /// 1.1 Get Auth Message
  @GET('/api/v1/auth/apple/generate-account')
  Future<AccountDto> generateAccount();
}
