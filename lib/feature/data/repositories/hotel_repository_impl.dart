import 'package:dartz/dartz.dart';
import 'package:hotel_test_app/core/error/failure.dart';
import 'package:hotel_test_app/feature/data/datasources/hotel_remote_datasource.dart';
import 'package:hotel_test_app/feature/domain/entities/hotel_entity.dart';
import 'package:hotel_test_app/feature/domain/entities/reservation_info_entity.dart';
import 'package:hotel_test_app/feature/domain/entities/room_entities_list.dart';
import 'package:hotel_test_app/feature/domain/repositories/hotel_repository.dart';

import '../../../core/error/exception.dart';
import '../../../core/platform/network_info.dart';

// Реализация репозитория
class HotelRepositoryImpl implements HotelRepository {
  final HotelRemoteDataSource _dataSource;
  final NetworkInfo _networkInfo;

  HotelRepositoryImpl(this._dataSource, this._networkInfo);

  @override
  Future<Either<Failure, HotelEntity>> getHotel() async {
    return await _request<HotelEntity>(() => _dataSource.getHotel());
  }

  @override
  Future<Either<Failure, RoomEntitiesList>> getRooms() async {
    return await _request<RoomEntitiesList>(() => _dataSource.getRooms());
  }

  @override
  Future<Either<Failure, ReservationInfoEntity>> getReservationInfo() async {
    return await _request<ReservationInfoEntity>(
      () => _dataSource.getReservationInfo(),
    );
  }

  Future<Either<Failure, T>> _request<T>(Future<T> Function() request) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await request();

        return Right(response);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}
