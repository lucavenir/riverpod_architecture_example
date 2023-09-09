import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../base/json.dart';
import 'astro_dto.dart';

part 'inner_astronomy_dto.freezed.dart';
part 'inner_astronomy_dto.g.dart';

@freezed
class InnerAstronomyDto with _$InnerAstronomyDto {
  const factory InnerAstronomyDto({
    required AstroDto astro,
  }) = _InnerAstronomyDto;
  factory InnerAstronomyDto.fromJson(Json json) => _$InnerAstronomyDtoFromJson(json);
}
