part of 'room_bloc.dart';

sealed class RoomEvent {}

final class RoomLoadEvent extends RoomEvent {}

final class RoomNavigateToReservationEvent extends RoomEvent {
  final BuildContext context;

  RoomNavigateToReservationEvent(this.context);
}

final class RoomNavigateToHotelEvent extends RoomEvent {
  final BuildContext context;

  RoomNavigateToHotelEvent(this.context);
}