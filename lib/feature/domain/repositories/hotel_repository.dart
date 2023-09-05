import 'package:dartz/dartz.dart';
import 'package:hotel_test_app/core/error/failure.dart';
import 'package:hotel_test_app/feature/domain/entities/hotel_entity.dart';

abstract interface class HotelRepository {
  Future<Either<Failure, HotelEntity>> getHotel();
}