import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_app/common/constants.dart';
import 'package:hotel_test_app/common/theme/hotel_theme_data.dart';
import 'package:hotel_test_app/feature/presentation/bloc/hotel_cubit/hotel_cubit.dart';
import 'package:hotel_test_app/feature/presentation/bloc/reservation_bloc/reservation_bloc.dart';
import 'package:hotel_test_app/feature/presentation/bloc/room_bloc/room_bloc.dart';
import 'package:hotel_test_app/feature/presentation/pages/final_page.dart';
import 'package:hotel_test_app/feature/presentation/pages/hotel_page.dart';
import 'package:hotel_test_app/feature/presentation/pages/reservation_page.dart';
import 'package:hotel_test_app/feature/presentation/pages/room_page.dart';
import 'package:hotel_test_app/locator_service.dart' as dependencyInjection;
import 'locator_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<HotelCubit>()..loadHotel()),
        BlocProvider(create: (context) => sl<RoomBloc>()),
        BlocProvider(create: (context) => sl<ReservationBloc>()),
      ],
      child: MaterialApp(
        title: Constants.APP_TITLE,
        theme: hotelThemeData(),
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case Constants.INITIAL_ROUTE:
              return MaterialPageRoute(builder: (context) => const HotelPage());

            case Constants.ROOM_ROUTE:
              final hotelName = settings.arguments as String;
              return MaterialPageRoute(
                builder: (context) => RoomPage(
                  hotelName: hotelName,
                ),
              );

            case Constants.RESERVATION_ROUTE:
              return MaterialPageRoute(
                  builder: (context) => const ReservationPage());

            case Constants.FINAL_ROUTE:
              return MaterialPageRoute(builder: (context) => const FinalPage());
            default:
              return MaterialPageRoute(builder: (context) => const HotelPage());
          }
        },
        home: const HotelPage(),
      ),
    );
  }
}
