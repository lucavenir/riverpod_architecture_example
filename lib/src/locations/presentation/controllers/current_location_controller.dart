import 'package:flutter_animate/flutter_animate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/presentation/cache_for.dart';
import '../../domain/entities/current_location.dart';
import '../../domain/interfaces/locations_repository_interface.dart';

part 'current_location_controller.g.dart';

@riverpod
class CurrentLocationController extends _$CurrentLocationController {
  @override
  Future<CurrentLocation> build() async {
    final locationService = ref.watch(locationsRepositoryProvider);
    final currentPosition = await locationService.getCurrentLocation();
    ref.cacheFor(60.seconds);
    return currentPosition;
  }

  void updateLocation(CurrentLocation location) => state = AsyncValue.data(location);
}
