import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../common/constants.dart';
import '../../feature/data/models/hotel_model.dart';

part 'retrofit_service.g.dart';

@RestApi(baseUrl: Constants.BASE_URL)
abstract class RetrofitService {
  factory RetrofitService(Dio dio, {String baseUrl}) = _RetrofitService;

  @GET("v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3")
  Future<HotelModel> getHotel();


}
