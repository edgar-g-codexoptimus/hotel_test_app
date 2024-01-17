import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../common/constants.dart';

class Utils {
  Utils._();

  static void showSnackBar(
    BuildContext context, {
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  static String getCountOfTourist(int position) {
    switch (position) {
      case 0:
        return Constants.FIRST_TOURIST;
      case 1:
        return Constants.SECOND_TOURIST;
      case 2:
        return Constants.THIRD_TOURIST;
      case 3:
        return Constants.FOURTH_TOURIST;
      case 4:
        return Constants.FIFTH_TOURIST;
      default:
        return "";
    }
  }

  static String convertToPriceFormat(int price) {
    final numFormat =
        NumberFormat.simpleCurrency(locale: "ru_RU", decimalDigits: 0);

    return numFormat.format(price);
  }
}
