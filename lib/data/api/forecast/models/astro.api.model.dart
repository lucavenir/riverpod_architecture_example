import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/json.dart';

part 'astro.api.model.freezed.dart';
part 'astro.api.model.g.dart';

@freezed
class AstroApiModel with _$AstroApiModel {
  const factory AstroApiModel(
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    int? moonIllumination,
    int? isMoonUp,
    int? isSunUp,
  ) = _AstroApiModel;

  factory AstroApiModel.fromJson(Json json) => _$AstroApiModelFromJson(json);
}
