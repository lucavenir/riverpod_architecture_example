import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../clients/connectivity_check_provider.dart';
import '../../../locations/domain/entities/current_location.dart';
import '../../data/repository/current_weather_repository.dart';
import '../../data/sources/current_weather_api.dart';
import '../../data/sources/current_weather_local.dart';
import '../entities/current_weather.dart';

part 'current_weather_repository_interface.g.dart';

@riverpod
CurrentWeatherRepositoryInterface currentWeatherRepository(CurrentWeatherRepositoryRef ref) {
  final api = ref.watch(currentWeatherApiProvider);
  final local = ref.watch(currentWeatherLocalProvider);
  final connectivity = ref.watch(connectivityCheckProvider);

  return CurrentWeatherRepository(api, local, connectivity);
}

abstract interface class CurrentWeatherRepositoryInterface {
  Future<CurrentWeather> getCurrentWeather(CurrentLocation location);
}
