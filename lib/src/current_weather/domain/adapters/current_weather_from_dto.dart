import '../../data/models/current_weather_dto.dart';
import '../entities/current_weather.dart';

extension CurrentWeatherFromDto on CurrentWeatherDto {
  CurrentWeather toDomain() {
    final truncatedUrl = current.condition.icon.substring(2);
    final imageUrl = 'https://$truncatedUrl';

    return CurrentWeather(
      temp: current.tempC.toInt(),
      weather: current.condition.text,
      updatedAt: current.lastUpdated,
      image: imageUrl,
      wind: current.windKph,
      perceivedtemp: current.feelslikeC,
      humidity: current.humidity,
    );
  }
}
