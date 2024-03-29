import 'package:freezed_annotation/freezed_annotation.dart';

import 'current_location.model.dart';

part 'locations.model.freezed.dart';

@freezed
class Locations with _$Locations {
  const factory Locations({
    required List<CurrentLocation> places,
  }) = _Locations;
}
