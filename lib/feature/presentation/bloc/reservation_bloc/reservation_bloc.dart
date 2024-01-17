import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_app/core/utils/utils.dart';
import 'package:hotel_test_app/feature/domain/entities/reservation_info_entity.dart';
import 'package:hotel_test_app/feature/domain/usecases/get_reservation_info.dart';

import '../../../../common/constants.dart';
import '../../../../core/mapping/map_failure_to_message.dart';
import '../../../../core/others/form_fields/form_fields.dart';
import '../../../../core/usecases/params/no_params.dart';

part 'reservation_state.dart';

part 'reservation_event.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  final GetReservationInfo _getReservationInfo;

  late ReservationInfoEntity _reservationInfo;

  final List<FormFields> _customerFormFields = [
    PhoneFormField(),
    EmailFormField(),
  ];

  final List<FormFields> _touristsFormFields = [
    TouristFormFields(),
  ];

  List<bool> _isCustomerFormValid = [false, false];

  List<bool> _isTouristsFormValid = [false];

  ReservationBloc(this._getReservationInfo) : super(ReservationLoadingState()) {
    on<ReservationLoadEvent>(
      (event, emit) async => await _loadEvent(emit),
    );

    on<ReservationNavigateToRoomEvent>(
      (event, emit) => _navigateToRoomEvent(event),
    );

    on<ReservationPayEvent>(_payEvent);

    on<ReservationClearTextEditingControllersEvent>(
        _clearTextEditingControllersEvent);

    on<ReservationAddTouristEvent>(
      (event, emit) => _addTouristEvent(event, emit),
    );
  }

  Future<void> _loadEvent(Emitter<ReservationState> emit) async {
    final failureOrReservationInfo = await _getReservationInfo(NoParams());

    failureOrReservationInfo.fold(
      (failure) =>
          emit(ReservationErrorState(message: mapFailureToMessage(failure))),
      (reservationInfo) {
        _reservationInfo = reservationInfo;
        emit(ReservationLoadedState(
            reservationInfo: reservationInfo,
            customersFormFields: _customerFormFields,
            touristsFormFields: _touristsFormFields));
      },
    );
  }

  void _navigateToRoomEvent(ReservationNavigateToRoomEvent event) {
    Navigator.pop(event.context);
  }

  void _payEvent(ReservationPayEvent event, Emitter<ReservationState> emit) {
    _checkCustomerFormValid();
    _checkTouristsFormFields();

    if (!_isCustomerFormValid.contains(false)) {
      if (!_isTouristsFormValid.contains(false)) {
        Navigator.pushNamed(event.context, Constants.FINAL_ROUTE);
      } else {
        emit(ReservationAfterWrongValidationState());
        emit(ReservationLoadedState(
            reservationInfo: _reservationInfo,
            customersFormFields: _customerFormFields,
            touristsFormFields: _touristsFormFields));
      }
    } else {
      emit(ReservationAfterWrongValidationState());
      emit(ReservationLoadedState(
          reservationInfo: _reservationInfo,
          customersFormFields: _customerFormFields,
          touristsFormFields: _touristsFormFields));
    }
  }

  void _addTouristEvent(
    ReservationAddTouristEvent event,
    Emitter<ReservationState> emit,
  ) {
    if (_touristsFormFields.length < 5) {
      _touristsFormFields.add(TouristFormFields());
      _isTouristsFormValid.add(false);

      emit(ReservationAddedTouristState());

      emit(ReservationLoadedState(
          reservationInfo: _reservationInfo,
          customersFormFields: _customerFormFields,
          touristsFormFields: _touristsFormFields));
    } else {
      Utils.showSnackBar(
        event.context,
        message: Constants.LIMIT_FOR_TOURISTS,
      );
    }
  }

  void _clearTextEditingControllersEvent(
    ReservationClearTextEditingControllersEvent event,
    Emitter<ReservationState> emit,
  ) {
    _clearTextEditingControllers();
  }

  void _checkTouristsFormFields() {
    for (var i = 0; i < _touristsFormFields.length; i++) {
      if (_isTouristsFormValid[i] == false) {
        _isTouristsFormValid[i] =
            _touristsFormFields[i].formKey.currentState?.validate() ?? false;
      }
    }
  }

  void _checkCustomerFormValid() {
    for (var i = 0; i < _customerFormFields.length; i++) {
      if (_isCustomerFormValid[i] == false)
        _isCustomerFormValid[i] =
            _customerFormFields[i].formKey.currentState?.validate() ?? false;
    }
  }

  List<Map<String, String>> get reservationInfoList => [
        {Constants.DEPARTURE: _reservationInfo.departure},
        {Constants.ARRIVAL_COUNTY: _reservationInfo.arrivalCountry},
        {
          Constants.DATE:
              "${_reservationInfo.tourDateStart} - ${_reservationInfo.tourDateStop}",
        },
        {
          Constants.NUMBER_OF_NIGHTS: "${_reservationInfo.numberOfNights} ночей"
        },
        {Constants.HOTEL_TITLE: _reservationInfo.hotelName},
        {Constants.ROOM_NAME: _reservationInfo.room},
        {Constants.NUTRITION: _reservationInfo.nutrition},
      ];

  List<FormFields> get customerFormFields => _customerFormFields;

  List<FormFields> get touristsFormFields => _touristsFormFields;

  void _clearTextEditingControllers() {
    _touristsFormFields.forEach((element) {
      element.controllers.forEach((element) {
        element.clear();
      });
    });

    _customerFormFields.forEach((element) {
      element.controllers.forEach((element) {
        element.clear();
      });
    });
  }

  int get totalPrice =>
      _reservationInfo.tourPrice +
      _reservationInfo.fuelCharge +
      _reservationInfo.serviceCharge;
}
