import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/constants.dart';

ThemeData hotelThemeData() => ThemeData(
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        elevation: 0.0,
        color: Colors.white,
        titleTextStyle: TextStyle(
          fontFamily: Constants.FONT_FAMILY,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          fontSize: 20.0,
        ),
      ),
      scaffoldBackgroundColor: Colors.grey.shade200,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 22.0,
          fontFamily: Constants.FONT_FAMILY,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodyLarge: TextStyle(
          fontSize: 30.0,
          fontFamily: Constants.FONT_FAMILY,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        bodySmall: TextStyle(
          fontSize: 16.0,
          fontFamily: Constants.FONT_FAMILY,
          color: Colors.grey,
        ),
        bodyMedium: TextStyle(
          fontSize: 18.0,
          fontFamily: Constants.FONT_FAMILY,
        ),
        titleMedium: TextStyle(
          color: Color.fromRGBO(44, 48, 51, 1),
          fontSize: 16.0,
          fontFamily: Constants.FONT_FAMILY,
        ),
        titleSmall: TextStyle(
          color: Color.fromRGBO(130, 135, 150, 1),
          fontSize: 14.0,
          fontFamily: Constants.FONT_FAMILY,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStateProperty.all(const EdgeInsets.all(0.0))),
      ),
    );
