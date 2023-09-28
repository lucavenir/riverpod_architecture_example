class NoInternetAvailableException implements Exception {
  const NoInternetAvailableException();
  @override
  String toString() {
    return 'Something went wrong';
  }
}
