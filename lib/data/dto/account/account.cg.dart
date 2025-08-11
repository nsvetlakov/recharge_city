import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_app_for_red/domain/account/account.cg.dart';

part 'gen/account.cg.f.dart';
part 'gen/account.cg.g.dart';

/// DTO
@freezed
sealed class AccountDto with _$AccountDto {
  /// DTO
  const factory AccountDto({
    @JsonKey(name: 'rechargeUserEntity') RechargeUserDto? rechargeUserEntity,
    @JsonKey(name: 'accessJwt') String? accessJwt,
    @JsonKey(name: 'refreshJwt') String? refreshJwt,
  }) = _AccountDto;

  const AccountDto._();

  ///
  factory AccountDto.fromJson(Map<String, dynamic> json) =>
      _$AccountDtoFromJson(json);

  /// Конвертирование в доменный тип.
  Account toDomain() {
    return Account(
      rechargeUserEntity: rechargeUserEntity?.toDomain() ?? RechargeUser.empty,
      accessJwt: accessJwt ?? '',
      refreshJwt: refreshJwt ?? '',
    );
  }
}

/// DTO
@freezed
sealed class RechargeUserDto with _$RechargeUserDto {
  /// DTO
  const factory RechargeUserDto({
    String? id,
    String? phone,
    @JsonKey(name: 'authType') String? authType,
    @JsonKey(name: 'firstName') String? firstName,
    @JsonKey(name: 'lastName') String? lastName,
    String? email,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
    @JsonKey(name: 'braintreeCustomerId') String? braintreeCustomerId,
    bool? blocked,
  }) = _RechargeUserDto;

  const RechargeUserDto._();

  ///
  factory RechargeUserDto.fromJson(Map<String, dynamic> json) =>
      _$RechargeUserDtoFromJson(json);

  /// Конвертим в домен.
  RechargeUser toDomain() {
    return RechargeUser(
      id: id ?? '',
      phone: phone ?? '',
      authType: authType ?? '',
      firstName: firstName ?? '',
      lastName: lastName ?? '',
      email: email ?? '',
      createdAt: createdAt ?? '',
      updatedAt: updatedAt ?? '',
      braintreeCustomerId: braintreeCustomerId ?? '',
    );
  }
}
