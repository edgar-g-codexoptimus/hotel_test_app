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
        titleMedium: TextStyle(
          fontSize: 17.0,
          fontFamily: Constants.FONT_FAMILY,
          color: Colors.black,
        ),
        titleSmall: TextStyle(
          fontSize: 17.0,
          fontFamily: Constants.FONT_FAMILY,
          color: Colors.grey,
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
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(0.0)),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          backgroundColor: const Color.fromRGBO(13, 114, 255, 1),
          minimumSize: const Size(double.infinity, 50),
          textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: Constants.FONT_FAMILY,
          ),
        ),
      ),
    );
