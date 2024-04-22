class LocationPermissionDeniedForeverException implements Exception {
  @override
  String toString() {
    return 'Access to location has been permanently denied. '
        'To change your decision, modify your device settings';
  }
}
