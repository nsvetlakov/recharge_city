// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../local_account_provider.cg.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$localAccountServiceHash() =>
    r'd828307c99d7d82f59511720ee37ba2595e8552f';

/// Сервис модели аккаунта для получения/сохранения данных о пользователе
/// в локальном хранилище
///
/// Copied from [LocalAccountService].
@ProviderFor(LocalAccountService)
final localAccountServiceProvider = NotifierProvider<LocalAccountService,
    ({LocalAccount localAcc, List<LocalAccount> localAccList})>.internal(
  LocalAccountService.new,
  name: r'localAccountServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$localAccountServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$LocalAccountService
    = Notifier<({LocalAccount localAcc, List<LocalAccount> localAccList})>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
