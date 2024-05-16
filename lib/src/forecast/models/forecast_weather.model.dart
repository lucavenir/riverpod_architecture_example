import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/forecast/forecast_weather.api.model.dart';
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
}

extension ForecastWeatherApiMapper on ForecastWeatherApiModel {
  ForecastWeather toEntity() {
    return ForecastWeather(
      updatedAt: current.lastUpdated,
      previsions: [
        for (final model in forecast.forecastday)
          ForecastDay(
            date: model.date,
            temp: model.day.avgtempC,
            weather: model.day.condition.text,
            image: 'https://${model.day.condition.icon.substring(2)}',
          ),
      ],
    );
  }
}
