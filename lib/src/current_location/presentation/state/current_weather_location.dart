import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../search/domain/services/locations_service.dart';
import '../../domain/adapters/position_to_query_adapter.dart';
import '../../domain/entities/current_location.dart';
import '../../domain/services/geolocation_service.dart';

part 'current_weather_location.g.dart';

@riverpod
class CurrentLocationController extends _$CurrentLocationController {
  @override
  Future<CurrentLocation> build() async {
    final geoService = ref.watch(geoLocationServiceProvider);
    final searchService = ref.watch(locationsServiceProvider);

    final currentPosition = await geoService.getGeoPosition();

    final q = currentPosition.associatedQuery;

    final locations = await searchService.getLocations(q);

    return locations.places.first;
  }

  void updateLocation(CurrentLocation location) {
    state = AsyncValue.data(location);
  }
}
