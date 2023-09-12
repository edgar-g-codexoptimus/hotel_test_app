part of 'reservation_bloc.dart';

sealed class ReservationState extends Equatable {
  const ReservationState();

  @override
  List<Object?> get props => [];
}

class ReservationLoadedState extends ReservationState {
  final ReservationInfoEntity reservationInfo;
  final FormFields customersFormFields;
  final List<FormFields> touristsFormFields;

  const ReservationLoadedState({
    required this.reservationInfo,
    required this.customersFormFields,
    required this.touristsFormFields,
  });

  @override
  List<Object?> get props => [reservationInfo, customersFormFields, touristsFormFields];
}

class ReservationLoadingState extends ReservationState {}

class ReservationErrorState extends ReservationState {
  final String message;

  const ReservationErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}

class ReservationAddedTouristState extends ReservationState {}
