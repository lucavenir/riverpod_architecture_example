import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/json.dart';

part 'astro.model.freezed.dart';
part 'astro.model.g.dart';

@freezed
class AstroModel with _$AstroModel {
  const factory AstroModel({
    required String sunrise,
    required String sunset,
    String? moonrise,
    String? moonset,
    String? moonPhase,
    String? moonIllumination,
  }) = _AstroModel;

  factory AstroModel.fromJson(Json json) => _$AstroModelFromJson(json);
}
