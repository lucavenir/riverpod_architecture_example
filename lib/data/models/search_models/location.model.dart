import 'package:freezed_annotation/freezed_annotation.dart';

import '../../json.dart';

part 'location.model.freezed.dart';
part 'location.model.g.dart';

@freezed
class LocationApiModel with _$LocationApiModel {
  const factory LocationApiModel({
    required String name,
    required String country,
    int? id,
    String? region,
    double? lat,
    double? lon,
    String? url,
  }) = _LocationApiModel;
  factory LocationApiModel.fromJson(Json json) => _$LocationApiModelFromJson(json);
}
