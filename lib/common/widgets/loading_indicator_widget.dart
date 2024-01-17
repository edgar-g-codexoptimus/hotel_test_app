import 'package:flutter/material.dart';

Widget loadingIndicatorWidget() => Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
