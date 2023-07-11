import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../current_location/domain/entities/current_location.dart';
import '../../data/adapters/sun_times_adapter.dart';
import '../../data/repository/astronomy_repository.dart';
import '../entities/sun_times.dart';

part 'sun_times_service.g.dart';

@riverpod
SunTimesService sunTimesService(SunTimesServiceRef ref) {
  final repo = ref.watch(astronomyRepositoryProvider);

  return SunTimesService(repo);
}

class SunTimesService {
  const SunTimesService(this.repository);

  final AstronomyRepository repository;

  Future<SunTimes> getSunTimes(CurrentLocation location) async {
    final result = await repository.getAstronomy(location.cityName);

    return result.toDomain();
  }
}
