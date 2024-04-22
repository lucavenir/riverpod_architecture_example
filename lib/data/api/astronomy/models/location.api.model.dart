import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../json.dart';

part 'location.api.model.freezed.dart';
part 'location.api.model.g.dart';

@freezed
class LocationApiModel with _$LocationApiModel {
  const factory LocationApiModel({
    @JsonKey(name: 'localtime') required String localTime,
    String? name,
    String? country,
    int? id,
    String? region,
    double? lat,
    double? lon,
    String? url,
  }) = _LocationApiModel;
  factory LocationApiModel.fromJson(Json json) => _$LocationApiModelFromJson(json);
}
