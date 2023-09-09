import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entities/current_location.dart';
import '../entities/locations.dart';
import '../repositories/locations_repository_interface.dart';

part 'locations_service.g.dart';

@riverpod
LocationsService locationsService(LocationsServiceRef ref) {
  final repository = ref.watch(locationsRepositoryProvider);
  return LocationsService(repository);
}

class LocationsService {
  const LocationsService(this.repository);
  final LocationsRepositoryInterface repository;

  Future<CurrentLocation> getCurrentPosition() => repository.getCurrentLocation();
  Future<Locations> findLocations(String search) => repository.findLocations(search);
}
