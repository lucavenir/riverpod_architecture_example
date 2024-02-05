import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';

part 'astro.model.freezed.dart';
part 'astro.model.g.dart';

@freezed
class AstroModel with _$AstroModel {
  const factory AstroModel(
    String? sunrise,
    String? sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    int? moonIllumination,
    int? isMoonUp,
    int? isSunUp,
  ) = _AstroModel;

  factory AstroModel.fromJson(Json json) => _$AstroModelFromJson(json);
}
