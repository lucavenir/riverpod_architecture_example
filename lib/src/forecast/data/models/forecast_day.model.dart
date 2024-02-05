import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';
import 'astro.model.dart';
import 'day.model.dart';
import 'hour.model.dart';

part 'forecast_day.model.freezed.dart';
part 'forecast_day.model.g.dart';

@freezed
class ForecastDayModel with _$ForecastDayModel {
  const factory ForecastDayModel({
    required DateTime date,
    required DayModel day,
    int? dateEpoch,
    AstroModel? astro,
    List<HourModel>? hour,
  }) = _ForecastDayModel;

  factory ForecastDayModel.fromJson(Json json) => _$ForecastDayModelFromJson(json);
}
