import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/interfaces/geolocator_interface.dart';
import '../../data/repositories/locations_repository.dart';
import '../../data/sources/search_api.dart';
import '../entities/current_location.dart';
import '../entities/locations.dart';

part 'locations_repository_interface.g.dart';

@riverpod
LocationsRepository locationsRepository(LocationsRepositoryRef ref) {
  final api = ref.watch(locationsApiProvider);
  final geo = ref.watch(geolocatorRepositoryProvider);
  return LocationsRepository(api, geo);
}

abstract interface class LocationsRepositoryInterface {
  Future<Locations> findLocations(String query);
  Future<CurrentLocation> getCurrentLocation();
}
