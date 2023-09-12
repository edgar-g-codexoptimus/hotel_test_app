import 'package:dartz/dartz.dart';
import 'package:hotel_test_app/core/error/failure.dart';
import 'package:hotel_test_app/feature/domain/entities/hotel_entity.dart';
import 'package:hotel_test_app/feature/domain/entities/reservation_info_entity.dart';
import 'package:hotel_test_app/feature/domain/entities/room_entities_list.dart';

abstract interface class HotelRepository {
  Future<Either<Failure, HotelEntity>> getHotel();
  Future<Either<Failure, RoomEntitiesList>> getRooms();
  Future<Either<Failure, ReservationInfoEntity>> getReservationInfo();
}