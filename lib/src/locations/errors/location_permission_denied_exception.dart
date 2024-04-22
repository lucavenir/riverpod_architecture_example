class LocationPermissionDeniedException implements Exception {
  @override
  String toString() {
    return 'Location access has not been authorized.';
  }
}
