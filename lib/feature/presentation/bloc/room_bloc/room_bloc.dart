import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/core/usecases/params/no_params.dart';
import 'package:hotel_test_app/feature/domain/entities/room_entities_list.dart';
import 'package:hotel_test_app/feature/domain/usecases/get_rooms.dart';
import 'package:hotel_test_app/feature/presentation/bloc/reservation_bloc/reservation_bloc.dart';

import '../../../../core/mapping/map_failure_to_message.dart';

part 'room_state.dart';

part 'room_event.dart';

part 'room_bloc.freezed.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final GetRooms _getRooms;

  late List<PageController> _pageControllers;

  RoomBloc(this._getRooms) : super(const RoomState.loading()) {
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
      (failure) => emit(RoomState.error(message: mapFailureToMessage(failure))),
      (rooms) {
        _pageControllers = List.generate(
          rooms.rooms.length,
          (index) => PageController(),
        );

        emit(RoomState.loaded(
          rooms: rooms,
          pageControllers: _pageControllers,
        ));
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

  @override
  Future<void> close() {
    _pageControllers.forEach((controller) => controller.dispose());
    return super.close();
  }
}
