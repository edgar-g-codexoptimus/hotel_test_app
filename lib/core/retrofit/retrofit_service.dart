import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../common/constants.dart';
import '../../feature/data/models/hotel_model.dart';
import '../../feature/data/models/reservation_info_model.dart';
import '../../feature/data/models/room_models_list.dart';

part 'retrofit_service.g.dart';

@RestApi(baseUrl: Constants.BASE_URL)
abstract class RetrofitService {
  factory RetrofitService(Dio dio, {String baseUrl}) = _RetrofitService;

  @GET(Constants.HOTEL_API_ROUTE)
  Future<HotelModel> getHotel();

  @GET(Constants.ROOM_API_ROUTE)
  Future<RoomModelsList> getRooms();

  @GET(Constants.RESERVATION_INFO_API_ROUTE)
  Future<ReservationInfoModel> getReservationInfo();
}
