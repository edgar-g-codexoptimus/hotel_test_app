import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_test_app/common/hotel_theme_data.dart';
import 'package:hotel_test_app/feature/presentation/bloc/hotel_cubit/hotel_cubit.dart';
import 'package:hotel_test_app/feature/presentation/pages/hotel_page.dart';
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
      ],
      child: MaterialApp(
        title: 'Hotel App',
        theme: hotelThemeData(),
        initialRoute: '/',
        routes: {

        },
        home: HotelPage(),
      ),
    );
  }
}
