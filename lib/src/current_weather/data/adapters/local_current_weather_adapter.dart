import '../../domain/entities/current_weather.dart';
import '../models/local_current_weather_dto.dart';

extension CurrentWeatherToLocalCurrentWeatherAdapter on CurrentWeather {
  LocalCurrentWeatherDto toDto() {
    return LocalCurrentWeatherDto(
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

extension LocalCurrentWeatherToEntityAdapter on LocalCurrentWeatherDto {
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
