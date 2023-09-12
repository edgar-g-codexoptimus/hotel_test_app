import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/constants.dart';

// Сущность для страницы Бронирование
class ReservationInfoEntity extends Equatable {
  final int id;

  @JsonKey(name: Constants.HOTEL_NAME_JSON_KEY)
  final String hotelName;

  @JsonKey(name: Constants.HOTEL_ADDRESS_JSON_KEY)
  final String hotelAddress;

  final int horating;

  @JsonKey(name: Constants.RATING_NAME_JSON_KEY)
  final String ratingName;
  final String departure;

  @JsonKey(name: Constants.ARRIVAL_COUNTRY_JSON_KEY)
  final String arrivalCountry;

  @JsonKey(name: Constants.TOUR_DATE_START_JSON_KEY)
  final String tourDateStart;

  @JsonKey(name: Constants.TOUR_DATE_STOP_JSON_KEY)
  final String tourDateStop;

  @JsonKey(name: Constants.NUMBER_OF_NIGHTS_JSON_KEY)
  final int numberOfNights;

  final String room;
  final String nutrition;

  @JsonKey(name: Constants.TOUR_PRICE_JSON_KEY)
  final int tourPrice;

  @JsonKey(name: Constants.FUEL_CHARGE_JSON_KEY)
  final int fuelCharge;

  @JsonKey(name: Constants.SERVICE_CHARGE_JSON_KEY)
  final int serviceCharge;

  const ReservationInfoEntity({
    required this.id,
    required this.hotelName,
    required this.hotelAddress,
    required this.horating,
    required this.ratingName,
    required this.departure,
    required this.arrivalCountry,
    required this.tourDateStart,
    required this.tourDateStop,
    required this.numberOfNights,
    required this.room,
    required this.nutrition,
    required this.tourPrice,
    required this.fuelCharge,
    required this.serviceCharge,
  });

  @override
  List<Object?> get props => [
        id,
        hotelName,
        hotelAddress,
        horating,
        ratingName,
        departure,
        arrivalCountry,
        tourDateStart,
        tourDateStop,
        numberOfNights,
        room,
        nutrition,
        tourPrice,
        fuelCharge,
        serviceCharge,
      ];
}
