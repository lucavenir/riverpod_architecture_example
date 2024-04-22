import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/json.dart';
import 'astro.api.model.dart';
import 'day.api.model.dart';
import 'hour.api.model.dart';

part 'forecast_day.api.model.freezed.dart';
part 'forecast_day.api.model.g.dart';

@freezed
class ForecastDayApiModel with _$ForecastDayApiModel {
  const factory ForecastDayApiModel({
    required DateTime date,
    required DayApiModel day,
    int? dateEpoch,
    AstroApiModel? astro,
    List<HourApiModel>? hour,
  }) = _ForecastDayApiModel;

  factory ForecastDayApiModel.fromJson(Json json) => _$ForecastDayApiModelFromJson(json);
}
