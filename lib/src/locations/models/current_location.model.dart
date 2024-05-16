import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/search_models/location.model.dart';

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
}

extension CurrentLocationApiMapper on LocationApiModel {
  CurrentLocation toEntity() {
    return CurrentLocation(
      cityName: name,
      lat: lat,
      long: lon,
      country: country,
    );
  }
}
