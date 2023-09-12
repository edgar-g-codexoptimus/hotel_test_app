import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/widgets/body_field_widget.dart';
import 'package:hotel_test_app/common/widgets/form_widget.dart';
import 'package:hotel_test_app/common/widgets/title_widget.dart';
import 'package:hotel_test_app/core/others/form_fields/form_fields.dart';

class CustomerInfoWidget extends StatelessWidget {
  const CustomerInfoWidget({
    super.key,
    required FormFields formFields,
  })  : _formFields = formFields;

  final FormFields _formFields;

  @override
  Widget build(BuildContext context) {
    return BodyFieldWidget(
      children: [
        titleWidget(context, title: Constants.ABOUT_CUSTOMER),
        const SizedBox(height: 16.0),
        formWidget(formFields: _formFields),
        const SizedBox(height: 8.0),
        _hintWidget(context),
      ],
    );
  }

  Widget _hintWidget(BuildContext context) => Text(
        Constants.CUSTOMER_HINT,
        style: Theme.of(context).textTheme.bodySmall,
      );
}
