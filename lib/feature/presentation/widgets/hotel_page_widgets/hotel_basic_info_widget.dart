import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/widgets/body_field_widget.dart';
import 'package:hotel_test_app/common/widgets/tag_widget.dart';
import 'package:hotel_test_app/feature/domain/entities/hotel_entity.dart';

import '../../../../common/constants.dart';
import '../../../../common/widgets/address_widget.dart';
import '../../../../common/widgets/image_widget.dart';
import '../../../../common/widgets/price_widget.dart';
import '../../../../common/widgets/title_widget.dart';

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
      isHotelBasicWidget: true,
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
        titleWidget(context, title: _hotel.name),
        addressWidget(text: _hotel.address),
        priceWidget(
          context,
          minimalPrice: "от ${_hotel.minimalPrice} ${Constants.RUBLE}",
          priceForIt: _hotel.priceForIt,
        ),
      ],
    );
  }
}
