import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_architecture_example/base/json.dart';

import '../../../shared/data/models/location_dto.dart';
import 'astronomy_dto.dart';

part 'astronomy_response_dto.freezed.dart';
part 'astronomy_response_dto.g.dart';

@freezed
class AstronomyResponseDto with _$AstronomyResponseDto {
  const factory AstronomyResponseDto({
    required AstronomyDto astronomy,
    LocationDto? location,
  }) = _AstronomyResponseDto;
  factory AstronomyResponseDto.fromJson(Json json) => _$AstronomyResponseDtoFromJson(json);
}
