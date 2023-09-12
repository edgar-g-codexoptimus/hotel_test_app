import 'package:flutter/material.dart';
import 'package:hotel_test_app/feature/presentation/widgets/reservation_page_widgets/tourist_info_widget.dart';

import '../../../../core/others/form_fields/form_fields.dart';

class ListOfTouristsWidget extends StatelessWidget {
  const ListOfTouristsWidget({
    super.key,
    required List<FormFields> touristsFormFields,
  })  : _touristsFormFields = touristsFormFields;

  final List<FormFields> _touristsFormFields;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _touristsFormFields.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, formFieldsIndex) => TouristInfoWidget(
        formFields: _touristsFormFields[formFieldsIndex],
        position: formFieldsIndex,
      ),
    );
  }
}
