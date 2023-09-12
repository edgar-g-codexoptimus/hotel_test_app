import 'package:dartz/dartz.dart';
import 'package:hotel_test_app/core/usecases/params/no_params.dart';
import 'package:hotel_test_app/core/usecases/usecase.dart';
import 'package:hotel_test_app/feature/domain/entities/reservation_info_entity.dart';
import 'package:hotel_test_app/feature/domain/repositories/hotel_repository.dart';

import '../../../core/error/failure.dart';

// Сценарий получения информации о бронировании
class GetReservationInfo extends UseCase<ReservationInfoEntity, NoParams> {
  final HotelRepository _repository;

  GetReservationInfo(this._repository);

  @override
  Future<Either<Failure, ReservationInfoEntity>> call(NoParams params) async {
    return await _repository.getReservationInfo();
  }
}
