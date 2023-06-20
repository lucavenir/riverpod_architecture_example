class LocationPermissionDeniedException implements Exception {
  @override
  String toString() =>
      "LocationPermissionDeniedException: Non è stato autorizzato l'accesso alla posizione.";
}
