import 'dart:ui';

import 'package:flutter/material.dart';

class MealBoxModel {
  final String? imagePath;
  final String? itemCount;
  final List<Color> gradientColors;

  MealBoxModel({
    required this.imagePath,
    required this.itemCount,
    required this.gradientColors,
  });
}

List mealBoxList = [
  MealBoxModel(
    imagePath: 'images/f-removebg-preview.png',
    itemCount: '3 Items Box',
    gradientColors: const [Color.fromARGB(255, 237, 161, 188), Colors.white],
  ),
  MealBoxModel(
    imagePath: 'images/g-removebg-preview.png',
    itemCount: '5 Items Box',
    gradientColors: const [Color.fromARGB(255, 144, 141, 204), Colors.white],
  ),
  MealBoxModel(
    imagePath: 'images/a-removebg-preview (1).png',
    itemCount: '4 Items Box',
    gradientColors: const [Color.fromARGB(255, 245, 252, 182), Colors.white],
  )
];
