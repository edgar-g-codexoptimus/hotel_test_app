import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/widgets/app_bar_widget.dart';
import 'package:hotel_test_app/common/widgets/error_widget.dart';
import 'package:hotel_test_app/common/widgets/loading_indicator_widget.dart';
import 'package:hotel_test_app/feature/presentation/bloc/hotel_cubit/hotel_cubit.dart';
import 'package:hotel_test_app/feature/presentation/widgets/hotel_page_widgets/hotel_basic_info_widget.dart';
import 'package:hotel_test_app/feature/presentation/widgets/hotel_page_widgets/hotel_detail_info_widget.dart';

import '../../../common/widgets/navigation_button_widget.dart';

class HotelPage extends StatelessWidget {
  const HotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.watch<HotelCubit>();
    return Scaffold(
      appBar: appBarWidget(title: Constants.HOTEL_TITLE),
      body: cubit.state.when(
        loading: loadingIndicatorWidget,
        loaded: (hotel) {
          return ListView(
            children: [
              HotelBasicInfoWidget(
                hotel: hotel,
                pageController: cubit.pageController,
              ),
              const SizedBox(height: 8.0),
              HotelDetailInfoWidget(
                hotel: hotel.aboutTheHotel,
                features: cubit.features,
              ),
              const SizedBox(height: 8.0),
              NavigationButtonWidget(
                title: Constants.NAVIGATE_TO_ROOM_TITLE,
                action: () => cubit.navigateToRoom(context, hotel.name),
              ),
            ],
          );
        },
        error: errorWidget,
      ),
    );
  }
}
