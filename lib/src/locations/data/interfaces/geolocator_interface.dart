import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../repositories/geolocator_repository.dart';

part 'geolocator_interface.g.dart';

@riverpod
GeolocatorInterface geolocatorRepository(GeolocatorRepositoryRef ref) {
  return GeolocatorRepository();
}

abstract interface class GeolocatorInterface {
  Future<bool> isLocationServiceEnabled();
  Future<LocationPermission> checkPermission();
  Future<LocationPermission> requestPermission();
  Future<Position> getCurrentPosition();
}
