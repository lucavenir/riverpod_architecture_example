import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/data/json.dart';
import 'astro.model.dart';

part 'inner_astronomy.model.freezed.dart';
part 'inner_astronomy.model.g.dart';

@freezed
class InnerAstronomyModel with _$InnerAstronomyModel {
  const factory InnerAstronomyModel({
    required AstroModel astro,
  }) = _InnerAstronomyModel;
  factory InnerAstronomyModel.fromJson(Json json) => _$InnerAstronomyModelFromJson(json);
}
