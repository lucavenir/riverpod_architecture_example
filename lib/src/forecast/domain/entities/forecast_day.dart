import 'package:freezed_annotation/freezed_annotation.dart';

part 'forecast_day.freezed.dart';

@freezed
class ForecastDay with _$ForecastDay {
  const factory ForecastDay({
    required double temp,
    required String weather,
    required DateTime date,
    required String image,
  }) = _ForecastDay;
}
