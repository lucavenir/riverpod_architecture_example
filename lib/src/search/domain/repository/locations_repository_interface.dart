import '../../data/sources/locations_api.dart';
import '../entities/locations.dart';

abstract interface class LocationsRepositoryInterface {
  const LocationsRepositoryInterface(this.api);

  final LocationsApi api;

  Future<Locations> getLocations(String search);
}
