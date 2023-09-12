// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_test_app/common/colors/app_colors.dart';
import 'package:hotel_test_app/common/styles/app_styles.dart';
import 'package:hotel_test_app/common/constants.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({
    super.key,
    required TextEditingController controller,
    required String labelText,
    required bool Function(String?) validator,
    required bool isEmail,
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputFormatters,
  })  : _isEmail = isEmail,
        _inputFormatters = inputFormatters,
        _keyboardType = keyboardType,
        _validator = validator,
        _labelText = labelText,
        _controller = controller;

  final TextEditingController _controller;
  final String _labelText;
  final bool Function(String?) _validator;
  final TextInputType? _keyboardType;
  final List<TextInputFormatter>? _inputFormatters;
  final bool _isEmail;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  Color _backgroundColor = AppColors.textFormFieldBackground;
  TextStyle _labelTextStyle = AppStyles.textFormFieldLabelTextStyle();
  AutovalidateMode? _autovalidateMode;

  @override
  void initState() {
    _autovalidateMode =
        widget._isEmail ? AutovalidateMode.onUserInteraction : null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: _backgroundColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: TextFormField(
        controller: widget._controller,
        decoration: InputDecoration(
          labelText: widget._labelText,
          labelStyle: _labelTextStyle,
          border: InputBorder.none,
          errorStyle: const TextStyle(height: 0.01, color: Colors.transparent),
        ),
        autovalidateMode: _autovalidateMode,
        keyboardType: widget._keyboardType,
        validator: _validator,
        onTapOutside: (_) {
          if (widget._isEmail) _autovalidateMode = null;
        },
        onChanged: (_) {
          if (_autovalidateMode == null && widget._isEmail) {
            _autovalidateMode =
                widget._isEmail ? AutovalidateMode.onUserInteraction : null;
          }
        },
        onTap: () {
          if (_autovalidateMode == null && widget._isEmail) {
            _autovalidateMode =
                widget._isEmail ? AutovalidateMode.onUserInteraction : null;
          }
        },
        inputFormatters: widget._inputFormatters,
        // onSaved: ,
      ),
    );
  }

  String? _validator(String? value) {
    bool valid = widget._validator(value);

    Future.delayed(const Duration(milliseconds: 1), () => _changeColors(valid));

    if (!valid) return Constants.INVALID_DATA;

    return null;
  }

  void _changeColors(bool isValid) async {
    switch (isValid) {
      case true:
        setState(() {
          _backgroundColor = AppColors.textFormFieldBackground;
          _labelTextStyle = AppStyles.textFormFieldLabelTextStyle();
        });
      case false:
        setState(() {
          _backgroundColor = AppColors.textFormFieldErrorColor;
          _labelTextStyle = AppStyles.textFormFieldLabelTextErrorStyle();
        });
    }
  }
}
