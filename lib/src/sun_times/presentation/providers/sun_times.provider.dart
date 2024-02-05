import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/presentation/controllers/current_location.controller.dart';
import '../../data/repositories/astronomy_repository.dart';
import '../../domain/entities/sun_times.dart';

part 'sun_times.provider.g.dart';

@riverpod
FutureOr<SunTimes> sunTimes(SunTimesRef ref) async {
  final repo = ref.watch(sunTimesRepositoryProvider);

  final currentLocation = await ref.watch(currentLocationControllerProvider.future);
  final sunTimes = await repo.getTodaySunTimes(currentLocation);

  return SunTimes.fromModel(sunTimes);
}
