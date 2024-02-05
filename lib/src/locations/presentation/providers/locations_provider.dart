import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/locations.dart';
import '../../domain/interfaces/locations_repository_interface.dart';

part 'locations_provider.g.dart';

@riverpod
FutureOr<Locations> searchLocations(SearchLocationsRef ref, String query) async {
  final service = ref.watch(locationsRepositoryProvider);
  final locations = await service.findLocations(query);

  return locations;
}
