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
      perceivedTemp: perceivedTemp,
      humidity: humidity,
    );
  }
}

extension IsarCurrentWeatherToEntityAdapter on IsarCurrentWeatherDto {
  CurrentWeather toEntity() {
    return CurrentWeather(
      weather: weather,
      image: image,
      temp: temp,
      updatedAt: updatedAt,
      wind: wind,
      perceivedTemp: perceivedTemp,
      humidity: humidity,
    );
  }
}
