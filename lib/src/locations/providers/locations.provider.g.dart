// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchLocationsHash() => r'9899a48c913192190dff6284793a1f9cf5b8e154';

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

/// See also [searchLocations].
@ProviderFor(searchLocations)
const searchLocationsProvider = SearchLocationsFamily();

/// See also [searchLocations].
class SearchLocationsFamily extends Family<AsyncValue<Locations>> {
  /// See also [searchLocations].
  const SearchLocationsFamily();

  /// See also [searchLocations].
  SearchLocationsProvider call(
    String query,
  ) {
    return SearchLocationsProvider(
      query,
    );
  }

  @override
  SearchLocationsProvider getProviderOverride(
    covariant SearchLocationsProvider provider,
  ) {
    return call(
      provider.query,
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
  String? get name => r'searchLocationsProvider';
}

/// See also [searchLocations].
class SearchLocationsProvider extends AutoDisposeFutureProvider<Locations> {
  /// See also [searchLocations].
  SearchLocationsProvider(
    String query,
  ) : this._internal(
          (ref) => searchLocations(
            ref as SearchLocationsRef,
            query,
          ),
          from: searchLocationsProvider,
          name: r'searchLocationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchLocationsHash,
          dependencies: SearchLocationsFamily._dependencies,
          allTransitiveDependencies:
              SearchLocationsFamily._allTransitiveDependencies,
          query: query,
        );

  SearchLocationsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<Locations> Function(SearchLocationsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchLocationsProvider._internal(
        (ref) => create(ref as SearchLocationsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Locations> createElement() {
    return _SearchLocationsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchLocationsProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchLocationsRef on AutoDisposeFutureProviderRef<Locations> {
  /// The parameter `query` of this provider.
  String get query;
}

class _SearchLocationsProviderElement
    extends AutoDisposeFutureProviderElement<Locations>
    with SearchLocationsRef {
  _SearchLocationsProviderElement(super.provider);

  @override
  String get query => (origin as SearchLocationsProvider).query;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
