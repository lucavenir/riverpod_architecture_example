import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/locations_repository.dart';
import '../../domain/entities/locations.dart';

part 'locations_provider.g.dart';

@riverpod
FutureOr<Locations> searchLocations(SearchLocationsRef ref, String query) async {
  final service = ref.watch(locationsRepositoryProvider);
  final locations = await service.findLocations(query);

  return locations;
}
