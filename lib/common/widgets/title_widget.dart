import 'package:flutter/material.dart';

Widget titleWidget(BuildContext context, {required String title}) => Text(
  title,
  style: Theme.of(context).textTheme.titleLarge,
);