// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/core/others/validators/validators_type.dart';

class Validator {
  Validator._();

  static bool _isNotCorrectlyDomain(String value) {
    return !(value.contains(Constants.YA_RU) ||
        value.contains(Constants.YANDEX_RU) ||
        value.contains(Constants.MAIL_RU) ||
        value.contains(Constants.GMAIL_COM));
  }

  static String? _validate(bool condition) {
    if (condition) return "";
    return null;
  }

  static String? validate<T extends ValidatorsType>(String? value) {

    switch (T) {
      case Email:
        return _validate(
            value == null || value.isEmpty || _isNotCorrectlyDomain(value));
      case Phone:
        return
            _validate(value == null || value.isEmpty || value.length != 18);
      default:
        return _validate(value == null || value.isEmpty);
    }
  }
}
