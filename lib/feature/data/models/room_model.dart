import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hotel_test_app/feature/domain/entities/room_entity.dart';

part 'room_model.g.dart';

@JsonSerializable()
class RoomModel extends RoomEntity {
  const RoomModel({
    required super.id,
    required super.name,
    required super.price,
    required super.pricePer,
    required super.peculiarities,
    required super.imageUrls,
  });

  factory RoomModel.fromJson(Map<String, dynamic> json) => _$RoomModelFromJson(json);
}
