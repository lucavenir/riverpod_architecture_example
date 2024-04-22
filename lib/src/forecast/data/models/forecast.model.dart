import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/json.dart';
import 'forecast_day.model.dart';

part 'forecast.model.freezed.dart';
part 'forecast.model.g.dart';

@freezed
class ForecastModel with _$ForecastModel {
  const factory ForecastModel({
    @Default([]) Iterable<ForecastDayModel> forecastday,
  }) = _ForecastModel;

  factory ForecastModel.fromJson(Json json) => _$ForecastModelFromJson(json);
}
