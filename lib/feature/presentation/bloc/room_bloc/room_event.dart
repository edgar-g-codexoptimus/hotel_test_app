part of 'room_bloc.dart';

@freezed
class RoomEvent with _$RoomEvent {
  const factory RoomEvent.load() = RoomLoadEvent;

  const factory RoomEvent.navigateToReservation(BuildContext context) = RoomNavigateToReservationEvent;

  const factory RoomEvent.navigateToHotel(BuildContext context) = RoomNavigateToHotelEvent;
}