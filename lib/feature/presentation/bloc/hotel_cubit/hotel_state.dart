part of 'hotel_cubit.dart';

@freezed
class HotelState with _$HotelState {
  const factory HotelState.loading() = _HotelLoadingState;
  const factory HotelState.loaded(HotelEntity hotel) = _HotelLoadedState;
  const factory HotelState.error(String message) = _HotelErrorState;
}