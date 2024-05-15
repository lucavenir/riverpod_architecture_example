// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http.client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpClientHash() => r'22992b97f3d9825040b4697fa12fe692cf917ea9';

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

/// See also [httpClient].
@ProviderFor(httpClient)
const httpClientProvider = HttpClientFamily();

/// See also [httpClient].
class HttpClientFamily extends Family<WeatherApiClient> {
  /// See also [httpClient].
  const HttpClientFamily();

  /// See also [httpClient].
  HttpClientProvider call({
    bool enableLogging = true,
  }) {
    return HttpClientProvider(
      enableLogging: enableLogging,
    );
  }

  @override
  HttpClientProvider getProviderOverride(
    covariant HttpClientProvider provider,
  ) {
    return call(
      enableLogging: provider.enableLogging,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'httpClientProvider';
}

/// See also [httpClient].
class HttpClientProvider extends AutoDisposeProvider<WeatherApiClient> {
  /// See also [httpClient].
  HttpClientProvider({
    bool enableLogging = true,
  }) : this._internal(
          (ref) => httpClient(
            ref as HttpClientRef,
            enableLogging: enableLogging,
          ),
          from: httpClientProvider,
          name: r'httpClientProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$httpClientHash,
          dependencies: HttpClientFamily._dependencies,
          allTransitiveDependencies:
              HttpClientFamily._allTransitiveDependencies,
          enableLogging: enableLogging,
        );

  HttpClientProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.enableLogging,
  }) : super.internal();

  final bool enableLogging;

  @override
  Override overrideWith(
    WeatherApiClient Function(HttpClientRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HttpClientProvider._internal(
        (ref) => create(ref as HttpClientRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        enableLogging: enableLogging,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<WeatherApiClient> createElement() {
    return _HttpClientProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HttpClientProvider && other.enableLogging == enableLogging;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, enableLogging.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HttpClientRef on AutoDisposeProviderRef<WeatherApiClient> {
  /// The parameter `enableLogging` of this provider.
  bool get enableLogging;
}

class _HttpClientProviderElement
    extends AutoDisposeProviderElement<WeatherApiClient> with HttpClientRef {
  _HttpClientProviderElement(super.provider);

  @override
  bool get enableLogging => (origin as HttpClientProvider).enableLogging;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
