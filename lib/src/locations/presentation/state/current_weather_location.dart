import 'package:flutter_animate/flutter_animate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/presentation/cache_for.dart';
import '../../domain/entities/current_location.dart';
import '../../domain/services/locations_service.dart';

part 'current_weather_location.g.dart';

@riverpod
class CurrentLocationController extends _$CurrentLocationController {
  @override
  Future<CurrentLocation> build() async {
    final locationService = ref.watch(locationsServiceProvider);
    final currentPosition = await locationService.getCurrentPosition();
    ref.cacheFor(60.seconds);
    return currentPosition;
  }

  void updateLocation(CurrentLocation location) => state = AsyncValue.data(location);
}
