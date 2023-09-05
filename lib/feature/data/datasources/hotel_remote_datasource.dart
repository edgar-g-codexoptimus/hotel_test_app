import 'package:hotel_test_app/core/error/exception.dart';
import 'package:hotel_test_app/core/retrofit/retrofit_service.dart';

import '../models/hotel_model.dart';

abstract interface class HotelRemoteDataSource {
  Future<HotelModel> getHotel();
}

class HotelRemoteDataSourceImpl implements HotelRemoteDataSource {
  final RetrofitService _client;

  HotelRemoteDataSourceImpl(this._client);

  @override
  Future<HotelModel> getHotel() async {
    return await _request<HotelModel>(() => _client.getHotel());
  }


  Future<T> _request<T>(Future<T> Function() request) async {
    try {
      final response = await request();

      return response;
    } catch(e) {
      throw ServerException();
    }
  }
}