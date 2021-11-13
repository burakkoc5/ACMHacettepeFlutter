class DurationException implements Exception {
  final dynamic data;

  DurationException(this.data);
  @override
  String toString() {
    // TODO: implement toString
    return "Duration not found $this";
  }
}
