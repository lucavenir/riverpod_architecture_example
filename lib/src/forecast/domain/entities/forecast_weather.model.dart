import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/forecast_weather.model.dart';
import 'forecast_day.model.dart';

part 'forecast_weather.model.freezed.dart';

@freezed
class ForecastWeather with _$ForecastWeather {
  const factory ForecastWeather({
    /// latest update of the weather conditions
    required DateTime updatedAt,

    /// list of forecasts of the next days
    required List<ForecastDay> previsions,
  }) = _ForecastWeather;

  const ForecastWeather._();
  factory ForecastWeather.fromModel(ForecastWeatherModel dto) {
    return ForecastWeather(
      updatedAt: dto.current.lastUpdated,
      previsions: [
        for (final dto in dto.forecast.forecastday)
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
