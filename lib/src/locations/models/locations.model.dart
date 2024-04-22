import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/api/search/models/location.model.dart';
import 'current_location.model.dart';

part 'locations.model.freezed.dart';

@freezed
class Locations with _$Locations {
  const factory Locations({
    required List<CurrentLocation> places,
  }) = _Locations;
}

extension LocationsApiMapper on Iterable<LocationApiModel> {
  Locations toEntity() {
    return Locations(places: [...map((e) => e.toEntity())]);
  }
}
