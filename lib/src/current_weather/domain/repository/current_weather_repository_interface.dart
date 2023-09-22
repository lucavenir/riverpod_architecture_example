import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../locations/domain/entities/current_location.dart';
import '../../data/repository/current_weather_repository.dart';
import '../../data/sources/current_weather_api.dart';
import '../entities/current_weather.dart';

part 'current_weather_repository_interface.g.dart';

@riverpod
CurrentWeatherRepositoryInterface currentWeatherRepository(CurrentWeatherRepositoryRef ref) {
  final api = ref.watch(currentWeatherApiProvider);
  return CurrentWeatherRepository(api);
}

abstract interface class CurrentWeatherRepositoryInterface {
  Future<CurrentWeather> getCurrentWeather(CurrentLocation location);
}
