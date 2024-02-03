// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpClientHash() => r'8cd8f374bcd51a214c361f15e10a1b429ea31e62';

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
class HttpClientFamily extends Family<Dio> {
  /// See also [httpClient].
  const HttpClientFamily();

  /// See also [httpClient].
  HttpClientProvider call({
    required String loggerLabel,
    bool enableLogging = true,
  }) {
    return HttpClientProvider(
      loggerLabel: loggerLabel,
      enableLogging: enableLogging,
    );
  }

  @override
  HttpClientProvider getProviderOverride(
    covariant HttpClientProvider provider,
  ) {
    return call(
      loggerLabel: provider.loggerLabel,
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
class HttpClientProvider extends AutoDisposeProvider<Dio> {
  /// See also [httpClient].
  HttpClientProvider({
    required String loggerLabel,
    bool enableLogging = true,
  }) : this._internal(
          (ref) => httpClient(
            ref as HttpClientRef,
            loggerLabel: loggerLabel,
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
          loggerLabel: loggerLabel,
          enableLogging: enableLogging,
        );

  HttpClientProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.loggerLabel,
    required this.enableLogging,
  }) : super.internal();

  final String loggerLabel;
  final bool enableLogging;

  @override
  Override overrideWith(
    Dio Function(HttpClientRef provider) create,
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
        loggerLabel: loggerLabel,
        enableLogging: enableLogging,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<Dio> createElement() {
    return _HttpClientProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HttpClientProvider &&
        other.loggerLabel == loggerLabel &&
        other.enableLogging == enableLogging;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, loggerLabel.hashCode);
    hash = _SystemHash.combine(hash, enableLogging.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HttpClientRef on AutoDisposeProviderRef<Dio> {
  /// The parameter `loggerLabel` of this provider.
  String get loggerLabel;

  /// The parameter `enableLogging` of this provider.
  bool get enableLogging;
}

class _HttpClientProviderElement extends AutoDisposeProviderElement<Dio>
    with HttpClientRef {
  _HttpClientProviderElement(super.provider);

  @override
  String get loggerLabel => (origin as HttpClientProvider).loggerLabel;
  @override
  bool get enableLogging => (origin as HttpClientProvider).enableLogging;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
