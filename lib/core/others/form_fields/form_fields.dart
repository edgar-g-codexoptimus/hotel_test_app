import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/core/others/validators/validator.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../validators/validators_type.dart';

sealed class FormFields extends Equatable {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final List<TextEditingController> controllers = [];
  final List<String> labelsTexts = [];
  final Map<int, bool Function(String?)> validators = {};
  final Map<int, TextInputType>? keyboardTypes = {};
  final Map<int, List<TextInputFormatter>>? inputFormatters = {};

  FormFields();

  @override
  List<Object?> get props => [
        formKey,
        controllers,
        labelsTexts,
        validators,
        keyboardTypes,
        inputFormatters,
      ];
}

class CustomerFormFields extends FormFields {
  @override
  List<TextEditingController> controllers =
      List.generate(2, (_) => TextEditingController());


  @override
  List<String> get labelsTexts => [
        Constants.PHONE,
        Constants.EMAIL,
      ];

  @override
  Map<int, bool Function(String?)> get validators => {
        0: Validator.validate<Phone>,
        1: Validator.validate<Email>,
      };

  @override
  Map<int, TextInputType>? get keyboardTypes => {
        0: TextInputType.phone,
        1: TextInputType.emailAddress,
      };

  @override
  Map<int, List<TextInputFormatter>>? get inputFormatters => {
        0: [MaskTextInputFormatter(mask: Constants.PHONE_MASK)]
      };
}

class TouristFormFields extends FormFields {
  @override
  List<TextEditingController> controllers =
      List.generate(6, (_) => TextEditingController());

  @override
  List<String> get labelsTexts => [
    Constants.NAME,
    Constants.SURNAME,
    Constants.DATE_OF_BIRTH,
    Constants.CITIZENSHIP,
    Constants.PASSPORTS_NUMBER,
    Constants.PERIOD_PASSPORT,
  ];

  @override
  Map<int, bool Function(String?)> get validators => {
    0: Validator.validate,
    1: Validator.validate,
    2: Validator.validate,
    3: Validator.validate,
    4: Validator.validate,
    5: Validator.validate,
  };

  @override
  Map<int, TextInputType>? get keyboardTypes => {
    2: TextInputType.datetime,
    4: TextInputType.number,
    5: TextInputType.datetime,
  };
}
