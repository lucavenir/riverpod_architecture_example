import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repositories/locations.repository.dart';
import '../../domain/entities/current_location.model.dart';
import '../../domain/entities/locations.model.dart';

part 'locations.provider.g.dart';

@riverpod
FutureOr<Locations> searchLocations(SearchLocationsRef ref, String query) async {
  final service = ref.watch(locationsRepositoryProvider);
  final locations = await service.findLocations(query);

  return Locations(places: [...locations.map(CurrentLocation.fromModel)]);
}
