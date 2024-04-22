import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/locations.model.dart';
import '../repositories/locations.repository.dart';

part 'locations.provider.g.dart';

@riverpod
FutureOr<Locations> searchLocations(SearchLocationsRef ref, String query) async {
  final service = ref.watch(locationsRepositoryProvider);
  final locations = await service.getLocations(query);

  return locations;
}
