// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../account.cg.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountDto _$AccountDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_AccountDto', json, ($checkedConvert) {
      final val = _AccountDto(
        rechargeUserEntity: $checkedConvert(
          'rechargeUserEntity',
          (v) => v == null
              ? null
              : RechargeUserDto.fromJson(v as Map<String, dynamic>),
        ),
        accessJwt: $checkedConvert('accessJwt', (v) => v as String?),
        refreshJwt: $checkedConvert('refreshJwt', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$AccountDtoToJson(_AccountDto instance) =>
    <String, dynamic>{
      'rechargeUserEntity': instance.rechargeUserEntity?.toJson(),
      'accessJwt': instance.accessJwt,
      'refreshJwt': instance.refreshJwt,
    };

_RechargeUserDto _$RechargeUserDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('_RechargeUserDto', json, ($checkedConvert) {
      final val = _RechargeUserDto(
        id: $checkedConvert('id', (v) => v as String?),
        phone: $checkedConvert('phone', (v) => v as String?),
        authType: $checkedConvert('authType', (v) => v as String?),
        firstName: $checkedConvert('firstName', (v) => v as String?),
        lastName: $checkedConvert('lastName', (v) => v as String?),
        email: $checkedConvert('email', (v) => v as String?),
        createdAt: $checkedConvert('createdAt', (v) => v as String?),
        updatedAt: $checkedConvert('updatedAt', (v) => v as String?),
        braintreeCustomerId: $checkedConvert(
          'braintreeCustomerId',
          (v) => v as String?,
        ),
        blocked: $checkedConvert('blocked', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$RechargeUserDtoToJson(_RechargeUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'authType': instance.authType,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'braintreeCustomerId': instance.braintreeCustomerId,
      'blocked': instance.blocked,
    };
