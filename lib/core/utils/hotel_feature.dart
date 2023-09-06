import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class HotelFeature extends Equatable {
  final String title;
  final Widget icon;

  const HotelFeature({
    required this.title,
    required this.icon,
  });

  @override
  List<Object?> get props => [title, icon];
}
