import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../clients/connectivity_check.provider.dart';
import '../../../locations/domain/entities/current_location.model.dart';
import '../../domain/entities/current_weather.model.dart';
import '../models/current_weather.model.dart';
import '../models/local_current_weather.model.dart';
import '../sources/current_weather_api.source.dart';
import '../sources/current_weather_local.source.dart';

part 'current_weather.repository.g.dart';

@riverpod
CurrentWeatherRepository currentWeatherRepository(CurrentWeatherRepositoryRef ref) {
  final api = ref.watch(currentWeatherApiProvider);
  final local = ref.watch(currentWeatherLocalProvider);
  final connectivity = ref.watch(connectivityCheckProvider);

  return CurrentWeatherRepository(api, local, connectivity);
}

class CurrentWeatherRepository {
  CurrentWeatherRepository(this.api, this.local, this.connectivity);
  final CurrentWeatherApi api;
  final CurrentWeatherLocal local;
  final ConnectionCheck connectivity;

  Future<CurrentWeatherModel> getCurrentWeather(CurrentLocation location) async {
    // final hasInternet = await connectivity.checkFullConnectivity();
    // if (!hasInternet) return _getCurrentWeatherFromDb(); //TODO(arturo) wtf do i do with this...

    final result = await api.current(location.cityName);
    final model = CurrentWeatherModel.fromJson(result);
    _saveCurrentWeather(CurrentWeather.fromModel(model));
    return model;
  }

  LocalCurrentWeatherModel _saveCurrentWeather(CurrentWeather currentWeather) {
    return local.saveCurrentWeather(currentWeather);
  }

  LocalCurrentWeatherModel _getCurrentWeatherFromDb() {
    return local.getCurrentWeatherFromDb();
  }
}
