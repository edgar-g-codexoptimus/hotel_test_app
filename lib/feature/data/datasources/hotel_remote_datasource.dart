import 'package:hotel_test_app/core/error/exception.dart';
import 'package:hotel_test_app/core/retrofit/retrofit_service.dart';

import '../models/hotel_model.dart';
import '../models/reservation_info_model.dart';
import '../models/room_models_list.dart';


// Удаленный источник данных
abstract interface class HotelRemoteDataSource {
  Future<HotelModel> getHotel();

  Future<RoomModelsList> getRooms();

  Future<ReservationInfoModel> getReservationInfo();
}

class HotelRemoteDataSourceImpl implements HotelRemoteDataSource {
  final RetrofitService _client;

  HotelRemoteDataSourceImpl(this._client);

  // Реализация получения информации об отеле
  @override
  Future<HotelModel> getHotel() async {
    return await _request<HotelModel>(() => _client.getHotel());
  }

  // Реализация получения информации о номерах
  @override
  Future<RoomModelsList> getRooms() async {
    return await _request<RoomModelsList>(() => _client.getRooms());
  }

  // Реализация получения информации о бронировании
  @override
  Future<ReservationInfoModel> getReservationInfo() async {
    return await _request<ReservationInfoModel>(
      () => _client.getReservationInfo(),
    );
  }


  // Шаблон получения данных
  Future<T> _request<T>(Future<T> Function() request) async {
    try {
      final response = await request();

      return response;
    } catch (e) {
      throw ServerException();
    }
  }
}
