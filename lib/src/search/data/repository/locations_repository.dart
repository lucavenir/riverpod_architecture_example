import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/adapters/locations_from_dto.dart';
import '../../domain/entities/locations.dart';
import '../models/search_location_dto.dart';
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

  Future<Locations> getLocations(String search) async {
    final result = await api.locations(q: search);
    final dto = result.map(SearchLocationDto.fromJson);
    final places = dto.map((e) => e.toDomain());
    final locations = Locations(places: places.toList());

    return locations;
  }
}
