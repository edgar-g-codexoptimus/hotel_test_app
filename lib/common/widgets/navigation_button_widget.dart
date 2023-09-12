import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/widgets/action_button_widget.dart';

class NavigationButtonWidget extends StatelessWidget {
  const NavigationButtonWidget({
    super.key,
    required String title,
    required void Function() action,
  })
      : _action = action,
        _title = title;

  final String _title;
  final void Function() _action;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 1.0,
            offset: Offset(1.0, 0.0),
          )
        ]
      ),
      padding: const EdgeInsets.only(
        bottom: 16.0,
        left: 16.0,
        right: 16.0,
        top: 0.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 16.0),
          ActionButtonWidget(
            title: _title,
            action: _action,
          ),
        ],
      ),
    );
  }
}
