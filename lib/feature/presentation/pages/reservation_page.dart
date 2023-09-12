// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/widgets/app_bar_widget.dart';
import 'package:hotel_test_app/common/widgets/error_widget.dart';
import 'package:hotel_test_app/common/widgets/loading_indicator_widget.dart';
import 'package:hotel_test_app/common/widgets/navigation_button_widget.dart';
import 'package:hotel_test_app/feature/domain/entities/reservation_info_entity.dart';
import 'package:hotel_test_app/feature/presentation/bloc/reservation_bloc/reservation_bloc.dart';
import 'package:hotel_test_app/feature/presentation/widgets/reservation_page_widgets/customer_info_widget.dart';
import 'package:hotel_test_app/feature/presentation/widgets/reservation_page_widgets/hotel_info_widget.dart';
import 'package:hotel_test_app/feature/presentation/widgets/reservation_page_widgets/list_of_tourists_widget.dart';
import 'package:hotel_test_app/feature/presentation/widgets/reservation_page_widgets/total_price_widget.dart';

import '../../../core/others/form_fields/form_fields.dart';
import '../widgets/reservation_page_widgets/add_tourist_widget.dart';
import '../widgets/reservation_page_widgets/reservation_info_widget.dart';

class ReservationPage extends StatelessWidget {
  const ReservationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<ReservationBloc>();

    return Scaffold(
      appBar: appBarWidget(
        title: Constants.RESERVATION_TITLE,
        action: () => bloc.add(ReservationNavigateToRoomEvent(context)),
      ),
      body: BlocBuilder<ReservationBloc, ReservationState>(
        builder: (context, state) {
          late ReservationInfoEntity reservationInfo;
          late FormFields customersFormFields;
          late List<FormFields> touristsFormFields;

          if (state is ReservationLoadingState)
            return loadingIndicatorWidget();
          else if (state is ReservationErrorState)
            return errorWidget(state.message);
          else if (state is ReservationLoadedState) {
            reservationInfo = state.reservationInfo;
            customersFormFields = state.customersFormFields;
            touristsFormFields = state.touristsFormFields;
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              children: [
                HotelInfoWidget(reservationInfo: reservationInfo),
                ReservationInfoWidget(
                    reservationInfo: bloc.reservationInfoList),
                CustomerInfoWidget(formFields: customersFormFields),
                ListOfTouristsWidget(touristsFormFields: touristsFormFields),
                AddTouristWidget(
                  action: () => bloc.add(ReservationAddTouristEvent(context)),
                ),
                TotalPriceWidget(
                  tourPrice: reservationInfo.tourPrice,
                  fuelCharge: reservationInfo.fuelCharge,
                  serviceCharge: reservationInfo.serviceCharge,
                ),
                NavigationButtonWidget(
                  title:
                      "${Constants.PAY} ${bloc.totalPrice} ${Constants.RUBLE}",
                  action: () => bloc.add(ReservationPayEvent(context)),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
// body: bloc.state.when(
//   loading: loadingIndicatorWidget,
//   loaded: (reservationInfo, touristsFormFields) {
//     return ListView(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       children: [
//         HotelInfoWidget(reservationInfo: reservationInfo),
//         ReservationInfoWidget(reservationInfo: bloc.reservationInfoList),
//         CustomerInfoWidget(formFields: bloc.customerFormFields),
//         ListOfTouristsWidget(touristsFormFields: touristsFormFields),
//         AddTouristWidget(
//           action: () => bloc.add(const ReservationEvent.addTourist()),
//         ),
//       ],
//     );
//   },
//   error: errorWidget,
// ),
