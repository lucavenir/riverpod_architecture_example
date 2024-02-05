import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';

part 'forecast_location.model.freezed.dart';
part 'forecast_location.model.g.dart';

@freezed
class ForecastLocationModel with _$ForecastLocationModel {
  const factory ForecastLocationModel(
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeEpoch,
    String? localtime,
  ) = _ForecastLocationModel;

  factory ForecastLocationModel.fromJson(Json json) => _$ForecastLocationModelFromJson(json);
}
