// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectivity_check_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$connectivityCheckHash() => r'78ba4b0ef116b2dbc7d7fb37efd3b466e5e604a9';

/// See also [connectivityCheck].
@ProviderFor(connectivityCheck)
final connectivityCheckProvider = AutoDisposeProvider<ConnectionCheck>.internal(
  connectivityCheck,
  name: r'connectivityCheckProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$connectivityCheckHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ConnectivityCheckRef = AutoDisposeProviderRef<ConnectionCheck>;
String _$connectivityStreamHash() =>
    r'821946b5ee81062711ade750a8c597368e640768';

/// See also [connectivityStream].
@ProviderFor(connectivityStream)
final connectivityStreamProvider = AutoDisposeStreamProvider<bool>.internal(
  connectivityStream,
  name: r'connectivityStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$connectivityStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ConnectivityStreamRef = AutoDisposeStreamProviderRef<bool>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
