import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_test_app/core/mapping/map_failure_to_message.dart';
import 'package:hotel_test_app/core/usecases/params/no_params.dart';
import 'package:hotel_test_app/feature/domain/entities/hotel_entity.dart';

import '../../../domain/usecases/get_hotel.dart';

part 'hotel_state.dart';

part 'hotel_cubit.freezed.dart';

class HotelCubit extends Cubit<HotelState> {
  final GetHotel _getHotel;

  final _pageController = PageController();

  HotelCubit(this._getHotel) : super(const HotelState.loading());

  void loadHotel() async {
    final failureOrHotel = await _getHotel(NoParams());

    failureOrHotel.fold(
      (failure) => emit(HotelState.error(mapFailureToMessage(failure))),
      (hotel) => emit(HotelState.loaded(hotel)),
    );
  }


  PageController get pageController => _pageController;
}
