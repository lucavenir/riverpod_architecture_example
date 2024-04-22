import 'package:flutter_animate/flutter_animate.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../shared/logic/cache_for.dart';
import '../models/current_location.model.dart';
import '../repositories/locations.repository.dart';

part 'current_location.controller.g.dart';

@riverpod
class CurrentLocationController extends _$CurrentLocationController {
  @override
  Future<CurrentLocation> build() async {
    final locationService = ref.watch(locationsRepositoryProvider);
    final location = await locationService.getCurrentLocation();
    ref.cacheFor(60.seconds);
    return location;
  }

  void updateLocation(CurrentLocation location) => state = AsyncValue.data(location);
}
