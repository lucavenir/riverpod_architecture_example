import '../../../current_location/domain/entities/current_location.dart';
import '../entities/forecast_weather.dart';

abstract interface class ForecastWeatherRepositoryInterface {
  Future<ForecastWeather> getForecastWeather(CurrentLocation location, int days);
}
