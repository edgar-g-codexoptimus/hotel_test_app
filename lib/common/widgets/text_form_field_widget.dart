// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_test_app/common/colors/app_colors.dart';

class TextFormFieldWidget extends StatefulWidget {
  const TextFormFieldWidget({
    super.key,
    required TextEditingController controller,
    required String labelText,
    String? hintText,
    required String? Function(String?) validator,
    required bool isEmail,
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputFormatters,
  })  : _isEmail = isEmail,
        _inputFormatters = inputFormatters,
        _keyboardType = keyboardType,
        _validator = validator,
        _labelText = labelText,
        _hintText = hintText,
        _controller = controller;

  final TextEditingController _controller;
  final String _labelText;
  final String? _hintText;
  final String? Function(String?) _validator;
  final TextInputType? _keyboardType;
  final List<TextInputFormatter>? _inputFormatters;
  final bool _isEmail;

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  String? _isValid = null;
  Color _backgroundColor = AppColors.textFormFieldBackground;
  late AutovalidateMode _autovalidateMode;

  @override
  void initState() {
    super.initState();
    _autovalidateMode = widget._isEmail
        ? AutovalidateMode.onUserInteraction
        : AutovalidateMode.disabled;
  }

  @override
  Widget build(BuildContext context) {
    _backgroundColor = _isValid == null
        ? AppColors.textFormFieldBackground
        : AppColors.textFormFieldErrorColor;

    return TextFormField(
      autovalidateMode: _autovalidateMode,
      controller: widget._controller,
      decoration: InputDecoration(
        labelText: widget._labelText,
        hintText: widget._hintText,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: _backgroundColor,
        labelStyle: TextStyle(color: Colors.grey.shade600),
        errorStyle: const TextStyle(fontSize: 0.1, color: Colors.transparent),
      ),
      keyboardType: widget._keyboardType,
      validator: (value) {
        _isValid = widget._validator(value);

        return _isValid;
      },
      onTapOutside: widget._isEmail ? (_) => setState(() {}) : null,
      inputFormatters: widget._inputFormatters,
    );
  }
}
