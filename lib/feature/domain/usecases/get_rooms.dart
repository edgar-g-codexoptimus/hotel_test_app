import 'package:dartz/dartz.dart';
import 'package:hotel_test_app/core/error/failure.dart';
import 'package:hotel_test_app/core/usecases/params/no_params.dart';
import 'package:hotel_test_app/core/usecases/usecase.dart';
import 'package:hotel_test_app/feature/domain/entities/room_entities_list.dart';
import 'package:hotel_test_app/feature/domain/repositories/hotel_repository.dart';


// Сценарий получения информации о номерах
class GetRooms extends UseCase<RoomEntitiesList, NoParams> {
  final HotelRepository _repository;

  GetRooms(this._repository);

  @override
  Future<Either<Failure, RoomEntitiesList>> call(NoParams params) async {
    return await _repository.getRooms();
  }
}
