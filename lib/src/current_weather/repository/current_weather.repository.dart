import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../clients/connectivity_check.provider.dart';
import '../../../clients/http.client.dart';
import '../../../clients/retrofit_client.dart';
import '../../../data/db/current_weather/current_weather.db.dart';
import '../../locations/models/current_location.model.dart';
import '../models/current_weather.model.dart';

part 'current_weather.repository.g.dart';

@riverpod
CurrentWeatherRepository currentWeatherRepository(CurrentWeatherRepositoryRef ref) {
  final client = ref.watch(httpClientProvider());
  final local = ref.watch(currentWeatherDbProvider);
  final connectivity = ref.watch(connectivityCheckProvider);

  return CurrentWeatherRepository(client, local, connectivity);
}

class CurrentWeatherRepository {
  CurrentWeatherRepository(this.client, this.local, this.connectivity);
  final WeatherApiClient client;
  final CurrentWeatherDb local;
  final ConnectionCheck connectivity;

  Future<CurrentWeather> getCurrentWeather(CurrentLocation location) async {
    final hasInternet = await connectivity.checkFullConnectivity();
    if (!hasInternet) return getCurrentWeatherFromDb();

    final model = await client.getCurrentWeather(location.cityName);
    final entity = model.toEntity();
    local.saveCurrentWeather(entity.toDbModel());
    return entity;
  }

  @protected
  CurrentWeather getCurrentWeatherFromDb() {
    return local.getCurrentWeatherFromDb().toEntity();
  }
}
