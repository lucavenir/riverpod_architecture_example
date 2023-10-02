class NoInternetAvailableException implements Exception {
  const NoInternetAvailableException();
  @override
  String toString() => 'No internet available. Is this mic on?';
}
