part of 'hotel_cubit.dart';

sealed class HotelState extends Equatable {
  HotelState();

  @override
  List<Object?> get props => [];
}

final class HotelLoadingState extends HotelState {}

final class HotelLoadedState extends HotelState {
  final HotelEntity hotel;

  HotelLoadedState(this.hotel);

  @override
  List<Object?> get props => [hotel];
}


final class HotelErrorState extends HotelState {
  final String message;

  HotelErrorState(this.message);

  @override
  List<Object?> get props => [message];
}