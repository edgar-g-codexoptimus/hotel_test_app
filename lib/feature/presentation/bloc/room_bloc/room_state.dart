part of 'room_bloc.dart';

sealed class RoomState extends Equatable {
  RoomState();

  @override
  List<Object?> get props => [];
}

final class RoomLoadedState extends RoomState {
  final RoomEntitiesList rooms;

  RoomLoadedState(this.rooms);

  @override
  List<Object?> get props => [rooms];
}

final class RoomLoadingState extends RoomState {}

final class RoomErrorState extends RoomState {
  final String message;

  RoomErrorState(this.message);

  @override
  List<Object?> get props => [message];
}