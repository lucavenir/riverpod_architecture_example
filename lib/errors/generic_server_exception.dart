class GenericServerException implements Exception {
  @override
  String toString() {
    return message;
  }

  String get message => 'Something went wrong';
}
