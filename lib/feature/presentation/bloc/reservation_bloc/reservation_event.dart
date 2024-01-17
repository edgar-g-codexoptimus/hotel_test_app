part of 'reservation_bloc.dart';

sealed class ReservationEvent {}

final class ReservationLoadEvent extends ReservationEvent {}

final class ReservationPayEvent extends ReservationEvent {
  final BuildContext context;

  ReservationPayEvent(this.context);
}

final class ReservationClearTextEditingControllersEvent extends ReservationEvent {}

final class ReservationNavigateToRoomEvent extends ReservationEvent {
  final BuildContext context;

  ReservationNavigateToRoomEvent(this.context);
}

final class ReservationAddTouristEvent extends ReservationEvent {
  final BuildContext context;

  ReservationAddTouristEvent(this.context);
}
