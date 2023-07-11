import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../current_location/domain/entities/current_location.dart';
import '../entities/current_weather.dart';

part 'sun_times_service.g.dart';

@riverpod
SunTimesService sunTimesService(SunTimesServiceRef ref) {
  final repo = ref.watch(...);

  return SunTimesService(repo);
}

class SunTimesService {
  const SunTimesService(this.repository);

  final AstronomyRepository repository;

  Future<CurrentWeather> getSunTimes(CurrentLocation location) async {
    final result = await repository.getCurrentWeather(location.cityName);

    return result.toDomain();
  }
}
