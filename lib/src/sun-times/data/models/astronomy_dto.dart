import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_architecture_example/base/json.dart';

import 'astro_dto.dart';

part 'astronomy_dto.freezed.dart';
part 'astronomy_dto.g.dart';

@freezed
class AstronomyDto with _$AstronomyDto {
  const factory AstronomyDto({
    required AstroDto astro,
  }) = _AstronomyDto;
  factory AstronomyDto.fromJson(Json json) => _$AstronomyDtoFromJson(json);
}
