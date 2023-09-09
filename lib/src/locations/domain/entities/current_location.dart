import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_location.freezed.dart';

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
