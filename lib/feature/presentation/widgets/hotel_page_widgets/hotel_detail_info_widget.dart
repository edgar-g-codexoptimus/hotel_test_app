import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/widgets/body_field_widget.dart';
import 'package:hotel_test_app/common/widgets/tag_widget.dart';

import '../../../domain/entities/about_hotel_entity.dart';

class HotelDetailInfoWidget extends StatelessWidget {
  const HotelDetailInfoWidget({
    super.key,
    required AboutHotelEntity hotel,
  }) : _aboutHotel = hotel;

  final AboutHotelEntity _aboutHotel;

  @override
  Widget build(BuildContext context) {
    return BodyFieldWidget(
      children: [
        _aboutWidget(context),
        const SizedBox(height: 16.0),
        _peculiaritiesWidget(),
        const SizedBox(height: 12.0),
        _descriptionWidget(context),
      ],
    );
  }

  Widget _aboutWidget(BuildContext context) => Text(
        Constants.ABOUT_HOTEL_TITLE,
        style: Theme.of(context).textTheme.titleLarge,
      );

  Widget _peculiaritiesWidget() => Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: _aboutHotel.peculiarities
            .map((peculiarity) => TagWidget(
                  title: peculiarity,
                  color: Colors.grey.shade600,
                ))
            .toList(),
      );

  Widget _descriptionWidget(BuildContext context) => Text(
        _aboutHotel.description,
        style: Theme.of(context).textTheme.bodyMedium,
      );
}
