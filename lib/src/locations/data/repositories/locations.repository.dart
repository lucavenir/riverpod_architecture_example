import 'package:geolocator/geolocator.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../adapters/position_to_query_adapter.dart';
import '../errors/location_permission_denied_exception.dart';
import '../errors/location_permission_denied_forever_exception.dart.dart';
import '../models/location.model.dart';
import '../sources/search_api.source.dart';
import 'geolocator.repository.dart';

part 'locations.repository.g.dart';

@riverpod
LocationsRepository locationsRepository(LocationsRepositoryRef ref) {
  final api = ref.watch(locationsApiProvider);
  final geo = ref.watch(geolocatorRepositoryProvider);
  return LocationsRepository(api, geo);
}

class LocationsRepository {
  const LocationsRepository(this.api, this.geo);
  final SearchApi api;
  final GeolocatorRepository geo;

  Future<LocationModel> getCurrentLocation() async {
    final serviceEnabled = await geo.isLocationServiceEnabled();
    if (!serviceEnabled) throw const LocationServiceDisabledException();

    var permission = await geo.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await geo.requestPermission();
      if (permission == LocationPermission.denied) throw LocationPermissionDeniedException();
    }
    if (permission == LocationPermission.deniedForever) {
      throw LocationPermissionDeniedForeverException();
    }

    final position = await geo.getCurrentPosition();

    final q = position.associatedQuery;

    final locations = await findLocations(q);

    return locations.first;
  }

  Future<List<LocationModel>> findLocations(String query) async {
    final result = await api.locations(q: query);
    final dto = result.map(LocationModel.fromJson);

    final locations = [...dto];

    return locations;
  }
}
