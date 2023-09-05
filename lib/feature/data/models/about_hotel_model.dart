import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_test_app/feature/domain/entities/about_hotel_entity.dart';

part 'about_hotel_model.g.dart';

@JsonSerializable()
class AboutHotelModel extends AboutHotelEntity {
  const AboutHotelModel({
    required super.description,
    required super.peculiarities,
  });

  factory AboutHotelModel.fromJson(Map<String, dynamic> json) =>
      _$AboutHotelModelFromJson(json);

}
