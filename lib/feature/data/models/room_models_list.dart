import 'package:hotel_test_app/feature/data/models/room_model.dart';
import 'package:hotel_test_app/feature/domain/entities/room_entities_list.dart';

class RoomModelsList extends RoomEntitiesList {
  const RoomModelsList({required super.rooms});

  factory RoomModelsList.fromJson(Map<String, dynamic> json) {
    List<RoomModel> rooms =
        (json["rooms"] as List).map((e) => RoomModel.fromJson(e)).toList();

    return RoomModelsList(rooms: rooms);
  }
}
