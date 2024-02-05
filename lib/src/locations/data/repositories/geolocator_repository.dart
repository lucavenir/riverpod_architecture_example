import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'geolocator_repository.g.dart';

@riverpod
GeolocatorRepository geolocatorRepository(GeolocatorRepositoryRef ref) {
  return GeolocatorRepository();
}

class GeolocatorRepository {
  Future<LocationPermission> checkPermission() => Geolocator.checkPermission();
  Future<Position> getCurrentPosition() => Geolocator.getCurrentPosition();
  Future<bool> isLocationServiceEnabled() => Geolocator.isLocationServiceEnabled();
  Future<LocationPermission> requestPermission() => Geolocator.requestPermission();
}
