import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/locations.dart';
import '../../domain/services/locations_service.dart';

part 'locations_search.g.dart';

@riverpod
FutureOr<Locations> searchLocations(SearchLocationsRef ref, String query) async {
  final service = ref.watch(locationsServiceProvider);
  final locations = await service.getLocations(query);

  return locations;
}
