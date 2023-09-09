import 'package:geolocator/geolocator.dart';

import '../interfaces/geolocator_interface.dart';

class GeolocatorRepository implements GeolocatorInterface {
  @override
  Future<LocationPermission> checkPermission() => Geolocator.checkPermission();
  @override
  Future<Position> getCurrentPosition() => Geolocator.getCurrentPosition();
  @override
  Future<bool> isLocationServiceEnabled() => Geolocator.isLocationServiceEnabled();
  @override
  Future<LocationPermission> requestPermission() => Geolocator.requestPermission();
}
