class NoDataAvailableException implements Exception {
  const NoDataAvailableException();
  @override
  String toString() => 'No data in local database available.';
}
