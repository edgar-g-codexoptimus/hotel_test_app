import 'package:flutter/material.dart';

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
}
