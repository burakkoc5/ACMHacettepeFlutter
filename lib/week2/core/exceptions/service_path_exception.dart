class ServicePathException implements Exception {
  final dynamic data;

  ServicePathException(this.data);
  @override
  String toString() {
    // TODO: implement toString
    return "Path not found $this";
  }
}
