import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dto/current_weather_dto.dart';
import '../sources/current_weather_api.dart';

part 'current_weather_repository.g.dart';

@riverpod
CurrentWeatherRepository currentWeatherRepository(CurrentWeatherRepositoryRef ref) {
  final api = ref.watch(currentWeatherApiProvider);

  return CurrentWeatherRepository(api);
}

class CurrentWeatherRepository {
  const CurrentWeatherRepository(this.api);
  final CurrentWeatherApi api;

  Future<CurrentWeatherDto> getCurrentWeather(String city) async {
    final result = await api.current(city);

    return CurrentWeatherDto.fromJson(result);
  }
}
