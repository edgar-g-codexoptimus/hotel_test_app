import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/core/usecases/params/no_params.dart';
import 'package:hotel_test_app/feature/domain/entities/room_entities_list.dart';
import 'package:hotel_test_app/feature/domain/usecases/get_rooms.dart';
import 'package:hotel_test_app/feature/presentation/bloc/reservation_bloc/reservation_bloc.dart';

import '../../../../core/mapping/map_failure_to_message.dart';

part 'room_state.dart';

part 'room_event.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final GetRooms _getRooms;

  RoomBloc(this._getRooms) : super(RoomLoadingState()) {
    on<RoomLoadEvent>(
      (event, emit) async => await _loadEvent(emit),
    );

    on<RoomNavigateToHotelEvent>(
      (event, emit) => _navigateToHotelEvent(event),
    );

    on<RoomNavigateToReservationEvent>(
        (event, emit) => _navigateToReservationEvent(event));
  }

  Future<void> _loadEvent(Emitter<RoomState> emit) async {
    final failureOrRooms = await _getRooms(NoParams());

    failureOrRooms.fold(
      (failure) => emit(RoomErrorState(mapFailureToMessage(failure))),
      (rooms) {
        emit(RoomLoadedState(rooms));
      },
    );
  }

  void _navigateToHotelEvent(RoomNavigateToHotelEvent event) {
    Navigator.pop(event.context);
  }

  void _navigateToReservationEvent(RoomNavigateToReservationEvent event) {
    event.context.read<ReservationBloc>().add(ReservationLoadEvent());

    Navigator.pushNamed(event.context, Constants.RESERVATION_ROUTE);
  }
}
