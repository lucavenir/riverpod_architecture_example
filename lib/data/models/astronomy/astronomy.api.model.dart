import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json.dart';
import 'inner_astronomy.api.model.dart';
import 'location.api.model.dart';

part 'astronomy.api.model.freezed.dart';
part 'astronomy.api.model.g.dart';

@freezed
class AstronomyApiModel with _$AstronomyApiModel {
  const factory AstronomyApiModel({
    required InnerAstronomyApiModel astronomy,
    LocationApiModel? location,
  }) = _AstronomyApiModel;
  factory AstronomyApiModel.fromJson(Json json) => _$AstronomyApiModelFromJson(json);
}
