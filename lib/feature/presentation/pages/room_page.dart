import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_app/common/widgets/error_widget.dart';
import 'package:hotel_test_app/common/widgets/loading_indicator_widget.dart';
import 'package:hotel_test_app/feature/presentation/bloc/room_bloc/room_bloc.dart';
import 'package:hotel_test_app/feature/presentation/widgets/room_page_widgets/room_card_widget.dart';

import '../../../common/widgets/app_bar_widget.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({
    super.key,
    required String hotelName,
  }) : _hotelName = hotelName;

  final String _hotelName;

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<RoomBloc>();
    return Scaffold(
      appBar: appBarWidget(
        title: _hotelName,
        action: () => bloc.add(RoomEvent.navigateToHotel(context)),
      ),
      body: bloc.state.when(
        loading: loadingIndicatorWidget,
        loaded: (rooms, pageControllers) {
          return ListView.separated(
            padding: const EdgeInsets.only(top: 10.0),
            shrinkWrap: true,
            itemCount: rooms.rooms.length,
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 8.0),
            itemBuilder: (context, index) => RoomCardWidget(
              room: rooms.rooms[index],
              pageController: pageControllers[index],
              navigateToReservation: () => bloc.add(
                RoomEvent.navigateToReservation(context),
              ),
            ),
          );
        },
        error: errorWidget,
      ),
    );
  }
}
