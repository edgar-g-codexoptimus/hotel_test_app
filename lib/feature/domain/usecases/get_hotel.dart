import 'package:dartz/dartz.dart';
import 'package:hotel_test_app/core/error/failure.dart';
import 'package:hotel_test_app/core/usecases/params/no_params.dart';
import 'package:hotel_test_app/core/usecases/usecase.dart';
import 'package:hotel_test_app/feature/domain/entities/hotel_entity.dart';
import 'package:hotel_test_app/feature/domain/repositories/hotel_repository.dart';

class GetHotel extends UseCase<HotelEntity, NoParams> {
  final HotelRepository _repository;

  GetHotel(this._repository);

  @override
  Future<Either<Failure, HotelEntity>> call(NoParams params) async {
    return await _repository.getHotel();
  }
}