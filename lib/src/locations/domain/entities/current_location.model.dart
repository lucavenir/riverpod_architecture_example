import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/location.model.dart';

part 'current_location.model.freezed.dart';

@freezed
class CurrentLocation with _$CurrentLocation {
  const factory CurrentLocation({
    /// City name
    required String cityName,

    /// Country
    required String country,

    /// Latitude of this place
    double? lat,

    /// Longitude of this place
    double? long,
  }) = _CurrentLocation;
  const CurrentLocation._();
  factory CurrentLocation.fromModel(LocationModel dto) {
    return CurrentLocation(
      cityName: dto.name,
      lat: dto.lat,
      long: dto.lon,
      country: dto.country,
    );
  }
}
