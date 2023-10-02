import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../base/json.dart';

part 'astro_dto.freezed.dart';
part 'astro_dto.g.dart';

@freezed
class AstroDto with _$AstroDto {
  const factory AstroDto({
    required String sunrise,
    required String sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    String? moonIllumination,
  }) = _AstroDto;

  factory AstroDto.fromJson(Json json) => _$AstroDtoFromJson(json);
}
