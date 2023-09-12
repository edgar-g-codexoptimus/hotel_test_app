import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/widgets/body_field_widget.dart';
import 'package:hotel_test_app/feature/domain/entities/reservation_info_entity.dart';

class ReservationInfoWidget extends StatelessWidget {
  const ReservationInfoWidget({
    super.key,
    required List<Map<String, String>> reservationInfo,
  }) : _reservationInfo = reservationInfo;

  final List<Map<String, String>> _reservationInfo;

  @override
  Widget build(BuildContext context) {
    return BodyFieldWidget(
      verticalPadding: 8.0,
      children: [
        Table(
          children: _reservationInfo
              .map(
                (e) => TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        e.keys.first,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        e.values.first,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ),
                  ],
                ),
              )
              .toList()
        ),
      ],
    );
  }
}
