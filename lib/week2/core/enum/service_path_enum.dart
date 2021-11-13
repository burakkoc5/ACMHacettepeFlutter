import 'package:flutter_learning/week2/core/exceptions/service_path_exception.dart';

enum ServicePathEnum { BASE_URL, POST }

extension ServicePathEnumExtension on ServicePathEnum {
  String get rawValue {
    switch (this) {
      case ServicePathEnum.BASE_URL:
        return "https://jsonplaceholder.typicode.com";

      case ServicePathEnum.POST:
        return "/posts";
      default:
        throw ServicePathException(this);
    }
  }
}
