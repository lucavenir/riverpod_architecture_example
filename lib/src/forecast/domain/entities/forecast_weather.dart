import 'package:freezed_annotation/freezed_annotation.dart';

import 'forecast_day.dart';

part 'forecast_weather.freezed.dart';

@freezed
class ForecastWeather with _$ForecastWeather {
  const factory ForecastWeather({
    /// latest update of the weather conditions
    required DateTime updatedAt,

    /// list of forecasts of the next days
    required List<ForecastDay> previsions,
  }) = _ForecastWeather;
}
