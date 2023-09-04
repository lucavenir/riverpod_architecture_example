import '../../../current_location/domain/entities/current_location.dart';
import '../entities/current_weather.dart';

abstract interface class CurrentWeatherRepositoryInterface {
  Future<CurrentWeather> getCurrentWeather(CurrentLocation location);
}
