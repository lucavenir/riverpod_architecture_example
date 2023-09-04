import '../../../current_location/domain/entities/current_location.dart';
import '../../data/sources/current_weather_api.dart';
import '../entities/current_weather.dart';

abstract interface class CurrentWeatherRepositoryInterface {
  const CurrentWeatherRepositoryInterface(this.api);
  final CurrentWeatherApi api;
  Future<CurrentWeather> getCurrentWeather(CurrentLocation location);
}
