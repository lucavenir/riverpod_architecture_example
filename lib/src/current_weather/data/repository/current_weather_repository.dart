import 'package:connectivity_plus/connectivity_plus.dart';

import '../../../../errors/generic_server_exception.dart';
import '../../../locations/domain/entities/current_location.dart';
import '../../domain/entities/current_weather.dart';
import '../../domain/repository/current_weather_repository_interface.dart';
import '../adapters/current_weather_from_dto.dart';
import '../models/current_weather_dto.dart';
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
    final hasInternet = connection != ConnectivityResult.none;
    if (!hasInternet) {
      // Try to get from isar
      throw const NoInternetAvailableException();
    }

    final result = await api.current(location.cityName);
    final model = CurrentWeatherDto.fromJson(result);
    return model.toEntity();
  }
}
