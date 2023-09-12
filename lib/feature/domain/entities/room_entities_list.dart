import 'package:equatable/equatable.dart';
import 'package:hotel_test_app/feature/domain/entities/room_entity.dart';

class RoomEntitiesList extends Equatable {
  final List<RoomEntity> rooms;

  const RoomEntitiesList({required this.rooms});

  @override
  List<Object?> get props => [rooms];
}
