import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/icons/app_icons.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/widgets/body_field_widget.dart';
import 'package:hotel_test_app/common/widgets/title_widget.dart';

class AddTouristWidget extends StatelessWidget {
  const AddTouristWidget({super.key, required void Function() action})
      : _action = action;

  final void Function() _action;

  @override
  Widget build(BuildContext context) {
    return BodyFieldWidget(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            titleWidget(context, title: Constants.ADD_TOURIST),
            _addButton(),
          ],
        ),
      ],
    );
  }

  Widget _addButton() => IconButton(
        onPressed: _action,
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.centerRight,
        icon: SizedBox(
          height: 35.0,
          width: 35.0,
          child: AppIcons.addIcon,
        ),
      );
}
