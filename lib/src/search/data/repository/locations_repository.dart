import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/search_location_dto.dart';
import '../sources/locations_api.dart';

part 'locations_repository.g.dart';

@riverpod
LocationsRepository locationsRepository(LocationsRepositoryRef ref) {
  final api = ref.watch(locationsApiProvider);
  return LocationsRepository(api);
}

class LocationsRepository {
  const LocationsRepository(this.api);
  final LocationsApi api;

  Future<Iterable<SearchLocationDto>> getLocations(String search) async {
    final result = await api.locations(q: search);
    final locations = result.map(SearchLocationDto.fromJson);

    return locations;
  }
}
