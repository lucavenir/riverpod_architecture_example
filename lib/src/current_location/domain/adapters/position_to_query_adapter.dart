import 'package:geolocator/geolocator.dart';

extension CurrentLocationFromGeolocation on Position {
  String get associatedQuery => '$latitude,$longitude';
}
