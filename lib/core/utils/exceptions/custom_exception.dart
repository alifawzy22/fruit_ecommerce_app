class CustomException implements Exception {
  final String errMessage;

  CustomException({required this.errMessage});
  @override
  String toString() {
    Exception(errMessage);
    return super.toString();
  }
}
