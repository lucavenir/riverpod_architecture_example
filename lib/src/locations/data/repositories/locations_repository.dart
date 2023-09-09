import 'package:geolocator/geolocator.dart';

import '../../domain/entities/current_location.dart';
import '../../domain/entities/locations.dart';
import '../../domain/repositories/locations_repository_interface.dart';
import '../adapters/locations_from_dto.dart';
import '../adapters/position_to_query_adapter.dart';
import '../errors/location_permission_denied_exception.dart';
import '../errors/location_permission_denied_forever_exception.dart.dart';
import '../interfaces/geolocator_interface.dart';
import '../models/location_dto.dart';
import '../sources/search_api.dart';

class LocationsRepository implements LocationsRepositoryInterface {
  const LocationsRepository(this.api, this.geo);
  final SearchApi api;
  final GeolocatorInterface geo;

  @override
  Future<CurrentLocation> getCurrentLocation() async {
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

    return locations.places.first;
  }

  @override
  Future<Locations> findLocations(String query) async {
    final result = await api.locations(q: query);
    final dto = result.map(LocationDto.fromJson);
    final places = dto.map((e) => e.toEntity());
    final locations = Locations(places: [...places]);

    return locations;
  }
}
