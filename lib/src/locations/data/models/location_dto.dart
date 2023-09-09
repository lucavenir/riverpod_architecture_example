import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../base/json.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
class LocationDto with _$LocationDto {
  const factory LocationDto({
    required String name,
    required String country,
    int? id,
    String? region,
    double? lat,
    double? lon,
    String? url,
  }) = _LocationDto;
  factory LocationDto.fromJson(Json json) => _$LocationDtoFromJson(json);
}
