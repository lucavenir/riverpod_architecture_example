import '../../../current_location/domain/entities/current_location.dart';
import '../../data/dto/search_location_dto.dart';

extension LocationsFromDto on SearchLocationDto {
  CurrentLocation toDomain() {
    return CurrentLocation(
      cityName: name,
      lat: lat,
      long: lon,
      country: country,
    );
  }
}
