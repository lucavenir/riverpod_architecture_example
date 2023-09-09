import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../base/json.dart';

part 'forecast_location_dto.freezed.dart';
part 'forecast_location_dto.g.dart';

@freezed
class ForecastLocationDto with _$ForecastLocationDto {
  const factory ForecastLocationDto(
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeEpoch,
    String? localtime,
  ) = _ForecastLocationDto;

  factory ForecastLocationDto.fromJson(Json json) => _$ForecastLocationDtoFromJson(json);
}
