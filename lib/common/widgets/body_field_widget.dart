import 'package:flutter/material.dart';

class BodyFieldWidget extends StatelessWidget {
  const BodyFieldWidget({
    super.key,
    required List<Widget> children,
    bool isHotelBasicWidget = false,
    double verticalPadding = 16.0,
    double horizontalPadding = 16.0,
  })  : _children = children,
        _verticalPadding = verticalPadding,
        _isHotelBasicWidget = isHotelBasicWidget,
        _horizontalPadding = horizontalPadding;

  final List<Widget> _children;
  final double _verticalPadding;
  final double _horizontalPadding;
  final bool _isHotelBasicWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: _verticalPadding,
        horizontal: _horizontalPadding,
      ),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: _isHotelBasicWidget
            ? const BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0))
            : BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _children,
      ),
    );
  }
}
