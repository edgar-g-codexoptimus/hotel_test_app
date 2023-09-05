import 'package:hotel_test_app/feature/domain/entities/hotel_entity.dart';

import 'about_hotel_model.dart';

class HotelModel extends HotelEntity {
  const HotelModel({
    required super.id,
    required super.name,
    required super.address,
    required super.minimalPrice,
    required super.priceForIt,
    required super.rating,
    required super.ratingName,
    required super.imageUrls,
    required super.aboutTheHotel,
  });

  factory HotelModel.fromJson(Map<String, dynamic> json) => HotelModel(
        id: json['id'] as int,
        name: json['name'] as String,
        address: json['adress'] as String,
        minimalPrice: json['minimal_price'] as int,
        priceForIt: json['price_for_it'] as String,
        rating: json['rating'] as int,
        ratingName: json['rating_name'] as String,
        imageUrls: json['image_urls'].cast<String>(),
        aboutTheHotel: AboutHotelModel.fromJson(json['about_the_hotel']),
      );
}
