part of 'room_bloc.dart';

@freezed
class RoomState with _$RoomState {
  const factory RoomState.loaded({
    required RoomEntitiesList rooms,
    required List<PageController> pageControllers,
  }) = _RoomLoadedState;

  const factory RoomState.loading() = _RoomLoadingState;

  const factory RoomState.error({required String message}) = _RoomErrorState;
}
