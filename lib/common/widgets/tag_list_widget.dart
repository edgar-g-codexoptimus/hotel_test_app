import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/widgets/tag_widget.dart';

Widget tagListWidget({required List<String> dataList, required Color color}) => Wrap(
  spacing: 8.0,
  runSpacing: 8.0,
  children: dataList
      .map((data) => TagWidget(
    title: data,
    color: color,
  ))
      .toList(),
);