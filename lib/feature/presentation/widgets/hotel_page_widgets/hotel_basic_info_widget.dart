import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/widgets/body_field_widget.dart';
import 'package:hotel_test_app/common/widgets/tag_widget.dart';
import 'package:hotel_test_app/core/utils/utils.dart';
import 'package:hotel_test_app/feature/domain/entities/hotel_entity.dart';

import '../../../../common/widgets/address_widget.dart';
import '../../../../common/widgets/image_widget.dart';
import '../../../../common/widgets/price_widget.dart';
import '../../../../common/widgets/title_widget.dart';

class HotelBasicInfoWidget extends StatelessWidget {
  const HotelBasicInfoWidget({
    super.key,
    required HotelEntity hotel,
  }) : _hotel = hotel;

  final HotelEntity _hotel;

  @override
  Widget build(BuildContext context) {
    return BodyFieldWidget(
      isHotelBasicWidget: true,
      imageWidget: ImageWidget(
        images: _hotel.imageUrls,
      ),
      children: [
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
          minimalPrice:
              "от ${Utils.convertToPriceFormat(_hotel.minimalPrice)}",
          priceForIt: _hotel.priceForIt,
        ),
      ],
    );
  }
}
