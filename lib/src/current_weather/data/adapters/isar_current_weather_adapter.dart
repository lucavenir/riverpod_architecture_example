import '../../domain/entities/current_weather.dart';
import '../models/isar_current_weather_dto.dart';

extension CurrentWeatherToIsarCurrentWeatherAdapter on CurrentWeather {
  IsarCurrentWeatherDto toDto() {
    return IsarCurrentWeatherDto(
      weather: weather,
      image: image,
      temp: temp,
      updatedAt: updatedAt,
      wind: wind,
      perceivedtemp: perceivedTemp,
      humidity: humidity,
    );
  }
}
