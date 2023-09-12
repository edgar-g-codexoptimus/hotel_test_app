import 'package:flutter/material.dart';

Widget priceWidget(
  BuildContext context, {
  required String minimalPrice,
  required String priceForIt,
}) =>
    Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          minimalPrice,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(width: 8.0),
        Text(
          priceForIt.toLowerCase(),
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
