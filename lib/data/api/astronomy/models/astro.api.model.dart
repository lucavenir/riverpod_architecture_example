import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../json.dart';

part 'astro.api.model.freezed.dart';
part 'astro.api.model.g.dart';

@freezed
class AstroApiModel with _$AstroApiModel {
  const factory AstroApiModel({
    required String sunrise,
    required String sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    String? moonIllumination,
  }) = _AstroApiModel;

  factory AstroApiModel.fromJson(Json json) => _$AstroApiModelFromJson(json);
}
