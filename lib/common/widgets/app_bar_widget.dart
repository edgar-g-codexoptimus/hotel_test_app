import 'package:flutter/material.dart';

PreferredSizeWidget appBarWidget({
  required String title,
  void Function()? action,
}) {
  return AppBar(
    title: Text(title),
    leading: action != null
        ? IconButton(
            onPressed: action,
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          )
        : null,
  );
}
