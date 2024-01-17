import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/core/others/validators/validator.dart';
import 'package:hotel_test_app/core/text_formatters/phone_text_input_formatter.dart';

import '../validators/validators_type.dart';

sealed class FormFields {
  final GlobalKey<FormState> formKey;
  final List<TextEditingController> controllers;
  final List<String?>? hintTexts;
  final List<String> labelsTexts;
  final Map<int, String? Function(String?)> validators;
  final Map<int, TextInputType>? keyboardTypes;
  final Map<int, List<TextInputFormatter>>? inputFormatters;

  FormFields({
    required this.formKey,
    this.controllers = const [],
    this.hintTexts,
    this.labelsTexts = const [],
    this.validators = const {},
    this.keyboardTypes,
    this.inputFormatters,
  });
}

class EmailFormField extends FormFields {
  EmailFormField()
      : super(
          formKey: GlobalKey<FormState>(),
          controllers: [TextEditingController()],
          keyboardTypes: {0: TextInputType.emailAddress},
          labelsTexts: [Constants.EMAIL],
          validators: {0: Validator.validate<Email>},
        );
}

class PhoneFormField extends FormFields {
  PhoneFormField()
      : super(
          formKey: GlobalKey<FormState>(),
          controllers: [TextEditingController()],
          hintTexts: [Constants.PHONE_HINT],
          inputFormatters: {
            0: [PhoneTextInputFormetter()]
          },
          keyboardTypes: {0: TextInputType.phone},
          labelsTexts: [Constants.PHONE],
          validators: {0: Validator.validate<Phone>},
        );
}

class TouristFormFields extends FormFields {
  TouristFormFields()
      : super(
          formKey: GlobalKey<FormState>(),
          controllers: List.generate(6, (_) => TextEditingController()),
          labelsTexts: [
            Constants.NAME,
            Constants.SURNAME,
            Constants.DATE_OF_BIRTH,
            Constants.CITIZENSHIP,
            Constants.PASSPORTS_NUMBER,
            Constants.PERIOD_PASSPORT,
          ],
          validators: {
            0: Validator.validate,
            1: Validator.validate,
            2: Validator.validate,
            3: Validator.validate,
            4: Validator.validate,
            5: Validator.validate,
          },
        );
}
