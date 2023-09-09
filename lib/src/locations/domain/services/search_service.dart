import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../entities/locations.dart';
import '../repositories/locations_repository_interface.dart';

part 'search_service.g.dart';

@riverpod
LocationsService searchService(SearchServiceRef ref) {
  final repository = ref.watch(locationsRepositoryProvider);
  return LocationsService(repository);
}

class LocationsService {
  const LocationsService(this.repository);
  final LocationsRepositoryInterface repository;

  Future<Locations> findLocations(String search) => repository.findLocations(search);
}
