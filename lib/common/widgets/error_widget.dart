import 'package:flutter/material.dart';

Widget errorWidget(String message) => Center(
  child: Text(
    message,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 20.0,
    ),
  ),
);