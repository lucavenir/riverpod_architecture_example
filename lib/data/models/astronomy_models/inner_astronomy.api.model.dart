import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json.dart';
import 'astro.api.model.dart';

part 'inner_astronomy.api.model.freezed.dart';
part 'inner_astronomy.api.model.g.dart';

@freezed
class InnerAstronomyApiModel with _$InnerAstronomyApiModel {
  const factory InnerAstronomyApiModel({
    required AstroApiModel astro,
  }) = _InnerAstronomyApiModel;
  factory InnerAstronomyApiModel.fromJson(Json json) => _$InnerAstronomyApiModelFromJson(json);
}
