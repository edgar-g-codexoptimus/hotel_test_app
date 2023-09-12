import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/widgets/text_form_field_widget.dart';

import '../../core/others/form_fields/form_fields.dart';

Widget formWidget({
  required FormFields formFields,
}) {
  return Form(
    key: formFields.formKey,
    child: ListView.separated(
      separatorBuilder: (_, index) => const SizedBox(height: 8.0),
      itemCount: formFields.controllers.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) {
        return TextFormFieldWidget(
          controller: formFields.controllers[index],
          labelText: formFields.labelsTexts[index],
          validator: formFields.validators[index]!,
          keyboardType: formFields.keyboardTypes?[index],
          inputFormatters: formFields.inputFormatters?[index],
          isEmail:
              formFields.labelsTexts[index] == Constants.EMAIL ? true : false,
        );
      },
    ),
  );
}
