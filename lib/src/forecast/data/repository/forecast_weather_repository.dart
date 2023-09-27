import '../../../locations/domain/entities/current_location.dart';
import '../../domain/entities/forecast_weather.dart';
import '../../domain/repository/forecast_weather_repository_interface.dart';
import '../adapters/forecast_weather_from_dto.dart';
import '../models/forecast_weather_dto.dart';
import '../sources/forecast_weather_api.dart';

class ForecastWeatherRepository implements ForecastWeatherRepositoryInterface {
  const ForecastWeatherRepository(this.api);
  final ForecastWeatherApi api;

  @override
  Future<ForecastWeather> getForecastWeather(CurrentLocation location, int days) async {
    final result = await api.forecast(
      q: location.cityName,
      days: days,
    );

    final dto = ForecastWeatherDto.fromJson(result);
    return dto.toDomain();
  }
}
