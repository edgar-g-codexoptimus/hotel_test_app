import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({
    super.key,
    required String title,
    required void Function() action,
  })  : _action = action,
        _title = title;

  final String _title;
  final void Function() _action;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _action,
      child: Text(_title),
    );
  }
}
