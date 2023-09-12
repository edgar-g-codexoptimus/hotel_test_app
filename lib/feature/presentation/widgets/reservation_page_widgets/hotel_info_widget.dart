import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/widgets/address_widget.dart';
import 'package:hotel_test_app/common/widgets/tag_widget.dart';
import 'package:hotel_test_app/common/widgets/title_widget.dart';
import 'package:hotel_test_app/feature/domain/entities/reservation_info_entity.dart';

import '../../../../common/widgets/body_field_widget.dart';

class HotelInfoWidget extends StatelessWidget {
  const HotelInfoWidget({
    super.key,
    required ReservationInfoEntity reservationInfo,
  }) : _reservationInfo = reservationInfo;

  final ReservationInfoEntity _reservationInfo;

  @override
  Widget build(BuildContext context) {
    return BodyFieldWidget(
      children: [
        TagWidget(
          leading: Icons.star,
          title: "${_reservationInfo.horating} ${_reservationInfo.ratingName}",
          color: Colors.amber,
        ),
        const SizedBox(height: 8.0),
        titleWidget(
          context,
          title: _reservationInfo.hotelName,
        ),
        // const SizedBox(height: 8.0),
        addressWidget(text: _reservationInfo.hotelAddress),
      ],
    );
  }
}
