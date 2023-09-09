import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../base/json.dart';
import 'inner_astronomy_dto.dart';
import 'location_dto.dart';

part 'astronomy_response_dto.freezed.dart';
part 'astronomy_response_dto.g.dart';

@freezed
class AstronomyDto with _$AstronomyDto {
  const factory AstronomyDto({
    required InnerAstronomyDto astronomy,
    LocationDto? location,
  }) = _AstronomyDto;
  factory AstronomyDto.fromJson(Json json) => _$AstronomyDtoFromJson(json);
}
