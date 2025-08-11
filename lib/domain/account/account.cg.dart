import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/account.cg.f.dart';

/// Account
@freezed
sealed class Account with _$Account {
  /// Account
  const factory Account({
    required RechargeUser rechargeUserEntity,
    required String accessJwt,
    required String refreshJwt,
  }) = _Account;

  const Account._();

  /// Ошибочное/пустое состояние
  static const Account empty = Account(
    rechargeUserEntity: RechargeUser.empty,
    accessJwt: '',
    refreshJwt: '',
  );
}

/// RechargeUser
@freezed
sealed class RechargeUser with _$RechargeUser {
  /// RechargeUser
  const factory RechargeUser({
    required String id,
    required String phone,
    required String authType,
    required String firstName,
    required String lastName,
    required String email,
    required String createdAt,
    required String updatedAt,
    required String braintreeCustomerId,
  }) = _RechargeUser;

  const RechargeUser._();

  /// Ошибочное/пустое состояние
  static const RechargeUser empty = RechargeUser(
    id: '',
    phone: '',
    authType: '',
    firstName: '',
    lastName: '',
    email: '',
    createdAt: '',
    updatedAt: '',
    braintreeCustomerId: '',
  );
}
