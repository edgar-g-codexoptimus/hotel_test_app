import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/constants.dart';

// Сущность для страницы Номера
class RoomEntity extends Equatable {
  final int id;
  final String name;
  final int price;

  @JsonKey(name: Constants.PRICE_PER_JSON_KEY)
  final String pricePer;

  final List<String> peculiarities;

  @JsonKey(name: Constants.IMAGE_URLS_JSON_KEY)
  final List<String> imageUrls;

  const RoomEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.pricePer,
    required this.peculiarities,
    required this.imageUrls,
  });

  @override
  List<Object?> get props => [id, name, price];
}
