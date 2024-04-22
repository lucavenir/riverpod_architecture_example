import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../locations/controllers/current_location.controller.dart';
import '../models/sun_times.model.dart';
import '../repositories/astronomy.repository.dart';

part 'sun_times.provider.g.dart';

@riverpod
FutureOr<SunTimes> sunTimes(SunTimesRef ref) async {
  final repo = ref.watch(sunTimesRepositoryProvider);

  final currentLocation = await ref.watch(currentLocationControllerProvider.future);
  final sunTimes = await repo.getTodaySunTimes(currentLocation.cityName);

  return sunTimes;
}
