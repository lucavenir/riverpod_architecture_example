import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/json.dart';
import 'inner_astronomy.model.dart';
import 'location.model.dart';

part 'astronomy.model.freezed.dart';
part 'astronomy.model.g.dart';

@freezed
class AstronomyModel with _$AstronomyModel {
  const factory AstronomyModel({
    required InnerAstronomyModel astronomy,
    LocationModel? location,
  }) = _AstronomyModel;
  factory AstronomyModel.fromJson(Json json) => _$AstronomyModelFromJson(json);
}
