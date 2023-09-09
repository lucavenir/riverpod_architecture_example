import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/presentation/state/current_weather_location.dart';
import '../../domain/entities/sun_times.dart';
import '../../domain/repository/sun_times_repository_interface.dart';

part 'sun_times.g.dart';

@riverpod
FutureOr<SunTimes> sunTimes(SunTimesRef ref) async {
  final repo = ref.watch(sunTimesRepositoryProvider);

  final currentLocation = await ref.watch(currentLocationControllerProvider.future);
  final sunTimes = await repo.getTodaySunTimes(currentLocation);

  return sunTimes;
}
