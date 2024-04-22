import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/api/search/models/location.model.dart';
import '../../../data/api/search/search.api.dart';
import '../errors/location_permission_denied_exception.dart';
import '../errors/location_permission_denied_forever_exception.dart.dart';
import '../models/current_location.model.dart';
import '../models/locations.model.dart';

part 'locations.repository.g.dart';

@riverpod
LocationsRepository locationsRepository(LocationsRepositoryRef ref) {
  final api = ref.watch(locationsApiProvider);
  return LocationsRepository(api);
}

class LocationsRepository {
  const LocationsRepository(this.api);
  final SearchApi api;

  Future<CurrentLocation> getCurrentLocation() async {
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

    final position = await Geolocator.getCurrentPosition();
    final q = position.toQuery();
    final locations = await findLocations(q);

    return locations.first.toEntity();
  }

  Future<Locations> getLocations(String query) async {
    final locations = await findLocations(query);
    return locations.toEntity();
  }

  @protected
  Future<Iterable<LocationApiModel>> findLocations(String query) async {
    final locations = await api.locations(q: query);
    return locations;
  }
}

extension PositionToQueryModel on Position {
  String toQuery() => '$latitude,$longitude';
}
