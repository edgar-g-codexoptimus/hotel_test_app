part of 'reservation_bloc.dart';

sealed class ReservationEvent extends Equatable {
  const ReservationEvent();

  @override
  List<Object?> get props => [];
}

class ReservationLoadEvent extends ReservationEvent {}

class ReservationPayEvent extends ReservationEvent {
  final BuildContext context;

  const ReservationPayEvent(this.context);

  @override
  List<Object?> get props => [context];
}

class ReservationNavigateToRoomEvent extends ReservationEvent {
  final BuildContext context;

  const ReservationNavigateToRoomEvent(this.context);

  @override
  List<Object?> get props => [context];
}

class ReservationAddTouristEvent extends ReservationEvent {
  final BuildContext context;

  const ReservationAddTouristEvent(this.context);

  @override
  List<Object?> get props => [context];
}

