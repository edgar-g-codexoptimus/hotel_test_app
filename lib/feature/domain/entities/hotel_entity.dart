import 'package:equatable/equatable.dart';
import 'about_hotel_entity.dart';

// Сущность для страницы Отель
class HotelEntity extends Equatable {
  final int id;
  final String name;
  final String address;
  final int minimalPrice;
  final String priceForIt;
  final int rating;
  final String ratingName;
  final List<String> imageUrls;
  final AboutHotelEntity aboutTheHotel;

  const HotelEntity({
    required this.id,
    required this.name,
    required this.address,
    required this.minimalPrice,
    required this.priceForIt,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.aboutTheHotel,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        address,
        minimalPrice,
        priceForIt,
        rating,
        ratingName,
        imageUrls,
        aboutTheHotel,
      ];
}
