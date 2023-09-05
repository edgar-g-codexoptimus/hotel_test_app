import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/widgets/body_field_widget.dart';
import 'package:hotel_test_app/common/widgets/tag_widget.dart';
import 'package:hotel_test_app/feature/domain/entities/hotel_entity.dart';

import '../../../../common/widgets/image_widget.dart';

class HotelBasicInfoWidget extends StatelessWidget {
  const HotelBasicInfoWidget({
    super.key,
    required HotelEntity hotel,
    required PageController pageController,
  })  : _pageController = pageController,
        _hotel = hotel;

  final HotelEntity _hotel;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return BodyFieldWidget(
      children: [
        ImageWidget(
          images: _hotel.imageUrls,
          controller: _pageController,
        ),
        const SizedBox(height: 15.0),
        TagWidget(
          leading: Icons.star,
          title: "${_hotel.rating} ${_hotel.ratingName}",
          color: Colors.amber,
        ),
        const SizedBox(height: 10.0),
        _titleWidget(context),
        _addressWidget(),
        _priceWidget(context),
      ],
    );
  }

  Widget _titleWidget(BuildContext context) => Text(
        _hotel.name,
        style: Theme.of(context).textTheme.titleLarge,
      );

  Widget _addressWidget() => TextButton(
        onPressed: () {},
        child: Text(_hotel.address),
      );

  Widget _priceWidget(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            "от ${_hotel.minimalPrice} ₽",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(width: 8.0),
          Text(
            _hotel.priceForIt.toLowerCase(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      );
}
