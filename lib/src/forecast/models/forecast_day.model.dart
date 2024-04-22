import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'forecast_day.model.freezed.dart';

@freezed
class ForecastDay with _$ForecastDay {
  const factory ForecastDay({
    required double temp,
    required String weather,
    required DateTime date,
    required String image,
  }) = _ForecastDay;
}

extension ForecastDayViews on ForecastDay {
  String get formattedTemperature {
    final oneDecimalFormat = NumberFormat('##0.#');
    final formattedTemp = oneDecimalFormat.format(temp);
    return '$formattedTemp °C';
  }
}
