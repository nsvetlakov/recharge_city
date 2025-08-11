// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../account_provider.cg.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$accountServiceHash() => r'2154d9f5c6b6c0939aa16826aaf32d7caba04511';

/// Сервис модели аккаунта для получения/сохранения данных о пользователе
/// в локальном хранилище
///
/// Copied from [AccountService].
@ProviderFor(AccountService)
final accountServiceProvider =
    AsyncNotifierProvider<AccountService, Account>.internal(
      AccountService.new,
      name: r'accountServiceProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$accountServiceHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$AccountService = AsyncNotifier<Account>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
