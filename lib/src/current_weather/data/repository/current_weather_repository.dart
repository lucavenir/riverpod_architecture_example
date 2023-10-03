import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../locations/domain/entities/current_location.dart';
import '../../domain/entities/current_weather.dart';
import '../../domain/repository/current_weather_repository_interface.dart';
import '../adapters/current_weather_from_dto.dart';
import '../models/current_weather_dto.dart';
import '../models/local_current_weather_dto.dart';
import '../sources/current_weather_api.dart';
import '../sources/current_weather_local.dart';

class CurrentWeatherRepository implements CurrentWeatherRepositoryInterface {
  CurrentWeatherRepository(this.api, this.local, this.connectivity);
  final CurrentWeatherApi api;
  final CurrentWeatherLocal local;
  final Connectivity connectivity;

  @override
  Future<CurrentWeather> getCurrentWeather(CurrentLocation location) async {
    final connection = await connectivity.checkConnectivity();
    var hasInternet = false;
    final isConnected = connection != ConnectivityResult.none;
    if (isConnected) {
      hasInternet = await InternetConnectionChecker().hasConnection;
    }
    if (!hasInternet) {
      final currentWeather = _getCurrentWeatherFromDb();
      return currentWeather;
    }

    final result = await api.current(location.cityName);
    final model = CurrentWeatherDto.fromJson(result);
    _saveCurrentWeather(model.toEntity());
    return model.toEntity();
  }

  LocalCurrentWeatherDto _saveCurrentWeather(CurrentWeather currentWeather) {
    return local.saveCurrentWeather(currentWeather);
  }

  CurrentWeather _getCurrentWeatherFromDb() {
    return local.getCurrentWeatherFromDb();
  }
}
