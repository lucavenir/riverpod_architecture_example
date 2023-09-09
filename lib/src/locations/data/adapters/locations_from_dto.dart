import '../../domain/entities/current_location.dart';
import '../models/search_location_dto.dart';

extension LocationsFromDto on SearchLocationDto {
  CurrentLocation toEntity() {
    return CurrentLocation(
      cityName: name,
      lat: lat,
      long: lon,
      country: country,
    );
  }
}
