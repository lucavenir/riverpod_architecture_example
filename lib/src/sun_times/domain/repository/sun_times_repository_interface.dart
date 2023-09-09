import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/domain/entities/current_location.dart';
import '../../data/repository/astronomy_repository.dart';
import '../../data/sources/astronomy_api.dart';
import '../entities/sun_times.dart';

part 'sun_times_repository_interface.g.dart';

@riverpod
SunTimesRepository sunTimesRepository(SunTimesRepositoryRef ref) {
  final api = ref.watch(astronomyApiProvider);
  return SunTimesRepository(api);
}

abstract interface class SunTimesRepositoryInterface {
  Future<SunTimes> getTodaySunTimes(CurrentLocation location);
}
