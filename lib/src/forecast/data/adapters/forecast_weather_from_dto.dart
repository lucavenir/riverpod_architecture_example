import '../../domain/entities/forecast_day.dart';
import '../../domain/entities/forecast_weather.dart';
import '../models/forecast_weather_dto.dart';

extension ForecastWeatherFromDto on ForecastWeatherDto {
  ForecastWeather toDomain() {
    return ForecastWeather(
      updatedAt: current.lastUpdated,
      previsions: [
        for (final dto in forecast.forecastday)
          ForecastDay(
            date: dto.date,
            temp: dto.day.avgtempC,
            weather: dto.day.condition.text,
            image: 'https://${dto.day.condition.icon.substring(2)}',
          ),
      ],
    );
  }
}
