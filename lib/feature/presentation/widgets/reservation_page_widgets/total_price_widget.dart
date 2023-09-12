import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/styles/app_styles.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/widgets/body_field_widget.dart';
import 'package:retrofit/http.dart';

class TotalPriceWidget extends StatelessWidget {
  const TotalPriceWidget({
    super.key,
    required int tourPrice,
    required int fuelCharge,
    required int serviceCharge,
  })  : _serviceCharge = serviceCharge,
        _fuelCharge = fuelCharge,
        _tourPrice = tourPrice,
        _totalPrice = tourPrice + fuelCharge + serviceCharge;

  final int _tourPrice;
  final int _fuelCharge;
  final int _serviceCharge;
  final int _totalPrice;

  @override
  Widget build(BuildContext context) {
    return BodyFieldWidget(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _titleColumn(context),
            _valueColumn(context),
          ],
        )
      ],
    );
  }

  Widget _titleColumn(BuildContext context) {
    List<String> titles = [
      Constants.TOUR,
      Constants.FUEL_CHARGE,
      Constants.SERVICE_CHARGE,
      Constants.TOTAL_PRICE,
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: titles
          .map((title) =>
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(title, style: Theme.of(context).textTheme.titleSmall),
              ))
          .toList(),
    );
  }

  Widget _valueColumn(BuildContext context) {
    List<int> values = [_tourPrice, _fuelCharge, _serviceCharge, _totalPrice];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: values
          .map((value) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text("$value ${Constants.RUBLE}",
                style: value != _totalPrice
                    ? Theme.of(context).textTheme.titleMedium
                    : AppStyles.totalPriceTextStyle()),
          ))
          .toList(),
    );
  }
}
