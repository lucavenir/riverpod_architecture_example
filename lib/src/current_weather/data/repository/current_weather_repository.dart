import '../../../locations/domain/entities/current_location.dart';
import '../../domain/entities/current_weather.dart';
import '../../domain/repository/current_weather_repository_interface.dart';
import '../adapters/current_weather_from_dto.dart';
import '../models/current_weather_dto.dart';
import '../sources/current_weather_api.dart';

class CurrentWeatherRepository implements CurrentWeatherRepositoryInterface {
  CurrentWeatherRepository(this.api);
  final CurrentWeatherApi api;

  @override
  Future<CurrentWeather> getCurrentWeather(CurrentLocation location) async {
    final result = await api.current(location.cityName);
    final dto = CurrentWeatherDto.fromJson(result);
    return dto.toEntity();
  }
}
