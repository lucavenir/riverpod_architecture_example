import '../entities/locations.dart';

abstract interface class LocationsRepositoryInterface {
  Future<Locations> getLocations(String search);
}
