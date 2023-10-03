import '../../../../clients/connectivity_check_provider.dart';
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
  final ConnectionCheck connectivity;

  @override
  Future<CurrentWeather> getCurrentWeather(CurrentLocation location) async {
    final hasInternet = await connectivity.checkFullConnectivity();
    if (!hasInternet) return _getCurrentWeatherFromDb();

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
