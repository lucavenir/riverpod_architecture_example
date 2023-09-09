import '../../domain/entities/current_location.dart';
import '../models/location_dto.dart';

extension LocationsFromDto on LocationDto {
  CurrentLocation toEntity() {
    return CurrentLocation(
      cityName: name,
      lat: lat,
      long: lon,
      country: country,
    );
  }
}
