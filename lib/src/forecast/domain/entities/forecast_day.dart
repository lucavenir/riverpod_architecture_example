import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/forecast_day_dto.dart';

part 'forecast_day.freezed.dart';

@freezed
class ForecastDay with _$ForecastDay {
  const factory ForecastDay({
    required double temp,
    required String weather,
    required DateTime date,
    required String image,
  }) = _ForecastDay;
  ForecastDay._();
  factory ForecastDay.fromModel(ForecastDayDto dto) {
    final truncatedUrl = dto.day.condition.icon.substring(2);
    final imageUrl = 'https://$truncatedUrl';

    return ForecastDay(
      temp: dto.day.avgtempC,
      weather: dto.day.condition.text,
      date: dto.date,
      image: imageUrl,
    );
  }
}
