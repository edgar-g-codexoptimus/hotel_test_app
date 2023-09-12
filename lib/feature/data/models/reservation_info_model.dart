import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_test_app/feature/domain/entities/reservation_info_entity.dart';

part 'reservation_info_model.g.dart';

@JsonSerializable()
class ReservationInfoModel extends ReservationInfoEntity {
  const ReservationInfoModel({
    required super.id,
    required super.hotelName,
    required super.hotelAddress,
    required super.horating,
    required super.ratingName,
    required super.departure,
    required super.arrivalCountry,
    required super.tourDateStart,
    required super.tourDateStop,
    required super.numberOfNights,
    required super.room,
    required super.nutrition,
    required super.tourPrice,
    required super.fuelCharge,
    required super.serviceCharge,
  });

  factory ReservationInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ReservationInfoModelFromJson(json);
}
