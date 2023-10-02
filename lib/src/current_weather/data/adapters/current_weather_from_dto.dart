import '../../domain/entities/current_weather.dart';
import '../models/current_weather_dto.dart';

extension CurrentWeatherFromDto on CurrentWeatherDto {
  CurrentWeather toEntity() {
    final truncatedUrl = current.condition.icon.substring(2);
    final imageUrl = 'https://$truncatedUrl';

    return CurrentWeather(
      temp: current.tempC.toInt(),
      weather: current.condition.text,
      updatedAt: current.lastUpdated,
      image: imageUrl,
      wind: current.windKph,
      perceivedTemp: current.feelslikeC,
      humidity: current.humidity,
    );
  }
}
