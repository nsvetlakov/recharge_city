// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../dio_provider.cg.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'7413bc7ce265cad3aecdc2827da95e74372df0b4';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// Dio провайдер для HTTP деятельности
///
/// Copied from [dio].
@ProviderFor(dio)
const dioProvider = DioFamily();

/// Dio провайдер для HTTP деятельности
///
/// Copied from [dio].
class DioFamily extends Family<Dio> {
  /// Dio провайдер для HTTP деятельности
  ///
  /// Copied from [dio].
  const DioFamily();

  /// Dio провайдер для HTTP деятельности
  ///
  /// Copied from [dio].
  DioProvider call(String baseUrl) {
    return DioProvider(baseUrl);
  }

  @override
  DioProvider getProviderOverride(covariant DioProvider provider) {
    return call(provider.baseUrl);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'dioProvider';
}

/// Dio провайдер для HTTP деятельности
///
/// Copied from [dio].
class DioProvider extends Provider<Dio> {
  /// Dio провайдер для HTTP деятельности
  ///
  /// Copied from [dio].
  DioProvider(String baseUrl)
    : this._internal(
        (ref) => dio(ref as DioRef, baseUrl),
        from: dioProvider,
        name: r'dioProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$dioHash,
        dependencies: DioFamily._dependencies,
        allTransitiveDependencies: DioFamily._allTransitiveDependencies,
        baseUrl: baseUrl,
      );

  DioProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.baseUrl,
  }) : super.internal();

  final String baseUrl;

  @override
  Override overrideWith(Dio Function(DioRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: DioProvider._internal(
        (ref) => create(ref as DioRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        baseUrl: baseUrl,
      ),
    );
  }

  @override
  ProviderElement<Dio> createElement() {
    return _DioProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DioProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DioRef on ProviderRef<Dio> {
  /// The parameter `baseUrl` of this provider.
  String get baseUrl;
}

class _DioProviderElement extends ProviderElement<Dio> with DioRef {
  _DioProviderElement(super.provider);

  @override
  String get baseUrl => (origin as DioProvider).baseUrl;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
