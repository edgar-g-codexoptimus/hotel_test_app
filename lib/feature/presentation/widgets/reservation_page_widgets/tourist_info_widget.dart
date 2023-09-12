import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/icons/app_icons.dart';
import 'package:hotel_test_app/common/widgets/body_field_widget.dart';
import 'package:hotel_test_app/common/widgets/form_widget.dart';
import 'package:hotel_test_app/common/widgets/title_widget.dart';
import 'package:hotel_test_app/core/others/form_fields/form_fields.dart';
import 'package:hotel_test_app/core/utils/utils.dart';

class TouristInfoWidget extends StatefulWidget {
  const TouristInfoWidget({
    super.key,
    required FormFields formFields,
    required int position,

  })  : _position = position,
        _formFields = formFields;

  final FormFields _formFields;
  final int _position;


  @override
  State<TouristInfoWidget> createState() => _TouristInfoWidgetState();
}

class _TouristInfoWidgetState extends State<TouristInfoWidget> {
  bool _isCollapsed = false;

  @override
  Widget build(BuildContext context) {
    return BodyFieldWidget(
      children: _isCollapsed ? _collapsedWidget() : _notCollapsedWidget(),
    );
  }

  List<Widget> _collapsedWidget() => [_titleWidget()];

  List<Widget> _notCollapsedWidget() => [
        _titleWidget(),
        const SizedBox(height: 8.0),
        formWidget(
          formFields: widget._formFields,
        ),
      ];

  Widget _titleWidget() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          titleWidget(
            context,
            title: Utils.getCountOfTourist(widget._position),
          ),
          _collapseButton(),
        ],
      );

  Widget _collapseButton() => IconButton(
        onPressed: _changeState,
        padding: const EdgeInsets.all(0.0),
        alignment: Alignment.centerRight,
        icon: SizedBox(
          height: 35.0,
          width: 35.0,
          child: _isCollapsed ? AppIcons.moreIcon : AppIcons.collapseIcon,
        ),
      );

  void _changeState() {
    setState(() {
      _isCollapsed = !_isCollapsed;
    });
  }
}
