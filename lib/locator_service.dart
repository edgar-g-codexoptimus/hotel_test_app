import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hotel_test_app/core/platform/network_info.dart';
import 'package:hotel_test_app/core/retrofit/retrofit_service.dart';
import 'package:hotel_test_app/feature/data/datasources/hotel_remote_datasource.dart';
import 'package:hotel_test_app/feature/data/repositories/hotel_repository_impl.dart';
import 'package:hotel_test_app/feature/domain/repositories/hotel_repository.dart';
import 'package:hotel_test_app/feature/domain/usecases/get_hotel.dart';
import 'package:hotel_test_app/feature/domain/usecases/get_reservation_info.dart';
import 'package:hotel_test_app/feature/domain/usecases/get_rooms.dart';
import 'package:hotel_test_app/feature/presentation/bloc/hotel_cubit/hotel_cubit.dart';
import 'package:hotel_test_app/feature/presentation/bloc/reservation_bloc/reservation_bloc.dart';
import 'package:hotel_test_app/feature/presentation/bloc/room_bloc/room_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'common/constants.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  sl.registerFactory<HotelCubit>(() => HotelCubit(sl<GetHotel>()));
  sl.registerFactory<RoomBloc>(() => RoomBloc(sl<GetRooms>()));
  sl.registerFactory<ReservationBloc>(
      () => ReservationBloc(sl<GetReservationInfo>()));

  // UseCases
  sl.registerLazySingleton<GetHotel>(() => GetHotel(sl<HotelRepository>()));
  sl.registerLazySingleton<GetRooms>(() => GetRooms(sl<HotelRepository>()));
  sl.registerLazySingleton<GetReservationInfo>(
      () => GetReservationInfo(sl<HotelRepository>()));

  // Repositories
  sl.registerLazySingleton<HotelRepository>(() =>
      HotelRepositoryImpl(sl<HotelRemoteDataSource>(), sl<NetworkInfo>()));

  // DataSources
  sl.registerLazySingleton<HotelRemoteDataSource>(
      () => HotelRemoteDataSourceImpl(sl<RetrofitService>()));

  // Externals
  final dio = Dio();
  dio.options.headers['Content-Type'] = "application/json";

  sl.registerLazySingleton<Dio>(() => dio);

  final RetrofitService client =
      RetrofitService(sl<Dio>(), baseUrl: Constants.BASE_URL);

  sl.registerLazySingleton<RetrofitService>(() => client);
  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(sl<InternetConnectionChecker>()));
  sl.registerLazySingleton(() => InternetConnectionChecker());
}
