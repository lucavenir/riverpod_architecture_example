import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../errors/location_permission_denied_exception.dart';
import '../errors/location_permission_denied_forever_exception.dart.dart';

part 'geolocation_service.g.dart';

@riverpod
GeoLocationService geoLocationService(GeoLocationServiceRef ref) {
  return const GeoLocationService();
}

class GeoLocationService {
  const GeoLocationService();

  Future<Position> getGeoPosition() async {
    final serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) throw const LocationServiceDisabledException();

    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) throw LocationPermissionDeniedException();
    }

    if (permission == LocationPermission.deniedForever) {
      throw LocationPermissionDeniedForeverException();
    }

    return Geolocator.getCurrentPosition();
  }
}
