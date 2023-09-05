// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

import '../constants.dart';

class TagWidget extends StatelessWidget {
  const TagWidget({
    super.key,
    IconData? leading,
    required String title,
    required Color color,
    IconData? trailing,
  })  : _trailing = trailing,
        _color = color,
        _title = title,
        _leading = leading;

  final IconData? _leading;
  final String _title;
  final Color _color;
  final IconData? _trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: _color.withOpacity(0.22),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _emptyOrWidget<Icon>(_leading),
          _emptyOrWidget(_leading),
          Text(
            _title,
            style: TextStyle(
              color: _color,
              fontFamily: Constants.FONT_FAMILY,
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
          ),
          _emptyOrWidget(_trailing),
          _emptyOrWidget<Icon>(_trailing),
        ],
      ),
    );
  }

  Widget _emptyOrWidget<T>(IconData? icon) {
    if (T == Icon)
      return icon == null
          ? const SizedBox()
          : Icon(
              icon,
              color: _color,
              size: 18.0,
            );
    else
      return icon == null ? const SizedBox() : const SizedBox(width: 3.0);
  }
  //
  // Widget _emptyOrSizedBox(IconData? icon) {
  //   return icon == null ? const SizedBox() : const SizedBox(width: 3.0);
  // }
}
