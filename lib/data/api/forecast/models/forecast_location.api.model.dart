import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/json.dart';

part 'forecast_location.api.model.freezed.dart';
part 'forecast_location.api.model.g.dart';

@freezed
class ForecastLocationApiModel with _$ForecastLocationApiModel {
  const factory ForecastLocationApiModel(
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeEpoch,
    String? localtime,
  ) = _ForecastLocationApiModel;

  factory ForecastLocationApiModel.fromJson(Json json) => _$ForecastLocationApiModelFromJson(json);
}
