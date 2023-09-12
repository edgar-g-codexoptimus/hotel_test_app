import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../constants.dart';

class AppStyles {
  AppStyles._();

  static ButtonStyle elevatedButtonStyle({
    required Color backgroundColor,
    Size? size,
  }) {
    return ElevatedButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      backgroundColor: backgroundColor,
      elevation: 0.0,
      minimumSize: size,
    );
  }

  static TextStyle textFormFieldLabelTextStyle() => const TextStyle(
        color: AppColors.textFormFieldLabelTextColor,
      );

  static TextStyle textFormFieldLabelTextErrorStyle() => const TextStyle(
        color: Colors.black,
      );

  static TextStyle totalPriceTextStyle() => const TextStyle(
        fontSize: 17.0,
        fontFamily: Constants.FONT_FAMILY,
        fontWeight: FontWeight.w500,
        color: AppColors.blue,
      );
}
