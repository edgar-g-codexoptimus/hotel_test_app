import 'package:flutter/material.dart';
import 'package:hotel_test_app/common/colors/app_colors.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/widgets/app_bar_widget.dart';
import 'package:hotel_test_app/common/widgets/navigation_button_widget.dart';
import 'package:hotel_test_app/common/widgets/title_widget.dart';

class FinalPage extends StatelessWidget {
  const FinalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWidget(
        title: Constants.ORDER_PAID,
        action: () => _navigateToReservation(context),
      ),
      body: Center(child: _orderInfoWidget(context)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: NavigationButtonWidget(
        title: Constants.SUPER,
        action: () => _navigateToHotelPage(context),
      ),
    );
  }

  void _navigateToReservation(BuildContext context) {
    Navigator.pop(context);
  }

  Widget _orderInfoWidget(BuildContext context) => Column(
    mainAxisSize: MainAxisSize.min,
    children: [
          _partyIcon(),
          const SizedBox(height: 20),
          titleWidget(
            context,
            title: Constants.ORDER_IN_WORK,
          ),
          const SizedBox(height: 20),
          _descriptionWidget(context),
        ],
      );

  Widget _partyIcon() => Container(
        height: 80.0,
        width: 80.0,
        decoration: const BoxDecoration(
          color: AppColors.textFormFieldBackground,
          shape: BoxShape.circle,
        ),
        child: SizedBox(
          height: 45.0,
          width: 45.0,
          child: Image.asset(Constants.PARTY_IMAGE_PATH),
        ),
      );

  Widget _descriptionWidget(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Text(
          Constants.ORDER_DESCRIPTION,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
      );

  void _navigateToHotelPage(BuildContext context) {
    while (Navigator.canPop(context)) {
      Navigator.pop(context);
    }
    // Navigator.popUntil(context, ModalRoute.withName(Constants.INITIAL_ROUTE));
  }
}
