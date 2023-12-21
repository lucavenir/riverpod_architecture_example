// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'http_client.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$httpClientHash() => r'f586f711b25a30bb90095c402d0058fd42705544';

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
    bool logRequestHeader = false,
    bool logRequestBody = false,
    bool logResponseHeader = false,
    bool logResponseBody = true,
  }) {
    return HttpClientProvider(
      loggerLabel: loggerLabel,
      logRequestHeader: logRequestHeader,
      logRequestBody: logRequestBody,
      logResponseHeader: logResponseHeader,
      logResponseBody: logResponseBody,
    );
  }

  @override
  HttpClientProvider getProviderOverride(
    covariant HttpClientProvider provider,
  ) {
    return call(
      loggerLabel: provider.loggerLabel,
      logRequestHeader: provider.logRequestHeader,
      logRequestBody: provider.logRequestBody,
      logResponseHeader: provider.logResponseHeader,
      logResponseBody: provider.logResponseBody,
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
    bool logRequestHeader = false,
    bool logRequestBody = false,
    bool logResponseHeader = false,
    bool logResponseBody = true,
  }) : this._internal(
          (ref) => httpClient(
            ref as HttpClientRef,
            loggerLabel: loggerLabel,
            logRequestHeader: logRequestHeader,
            logRequestBody: logRequestBody,
            logResponseHeader: logResponseHeader,
            logResponseBody: logResponseBody,
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
          logRequestHeader: logRequestHeader,
          logRequestBody: logRequestBody,
          logResponseHeader: logResponseHeader,
          logResponseBody: logResponseBody,
        );

  HttpClientProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.loggerLabel,
    required this.logRequestHeader,
    required this.logRequestBody,
    required this.logResponseHeader,
    required this.logResponseBody,
  }) : super.internal();

  final String loggerLabel;
  final bool logRequestHeader;
  final bool logRequestBody;
  final bool logResponseHeader;
  final bool logResponseBody;

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
        logRequestHeader: logRequestHeader,
        logRequestBody: logRequestBody,
        logResponseHeader: logResponseHeader,
        logResponseBody: logResponseBody,
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
        other.logRequestHeader == logRequestHeader &&
        other.logRequestBody == logRequestBody &&
        other.logResponseHeader == logResponseHeader &&
        other.logResponseBody == logResponseBody;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, loggerLabel.hashCode);
    hash = _SystemHash.combine(hash, logRequestHeader.hashCode);
    hash = _SystemHash.combine(hash, logRequestBody.hashCode);
    hash = _SystemHash.combine(hash, logResponseHeader.hashCode);
    hash = _SystemHash.combine(hash, logResponseBody.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HttpClientRef on AutoDisposeProviderRef<Dio> {
  /// The parameter `loggerLabel` of this provider.
  String get loggerLabel;

  /// The parameter `logRequestHeader` of this provider.
  bool get logRequestHeader;

  /// The parameter `logRequestBody` of this provider.
  bool get logRequestBody;

  /// The parameter `logResponseHeader` of this provider.
  bool get logResponseHeader;

  /// The parameter `logResponseBody` of this provider.
  bool get logResponseBody;
}

class _HttpClientProviderElement extends AutoDisposeProviderElement<Dio>
    with HttpClientRef {
  _HttpClientProviderElement(super.provider);

  @override
  String get loggerLabel => (origin as HttpClientProvider).loggerLabel;
  @override
  bool get logRequestHeader => (origin as HttpClientProvider).logRequestHeader;
  @override
  bool get logRequestBody => (origin as HttpClientProvider).logRequestBody;
  @override
  bool get logResponseHeader =>
      (origin as HttpClientProvider).logResponseHeader;
  @override
  bool get logResponseBody => (origin as HttpClientProvider).logResponseBody;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
