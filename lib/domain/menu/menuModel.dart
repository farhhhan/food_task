import 'dart:ui';

import 'package:flutter/material.dart';

class MenuModel {
  final String? title;
  final String? subtitle;
  final String? price;
  final Color? color;

  MenuModel({
    required this.title,
    required this.subtitle,
    required this.price,
    required this.color,
  });
}

List menuList1 = [
  MenuModel(
      title: 'Punjabi Special Menu',
      subtitle: '6 Categories & 9 Items',
      price: '₹299',
      color: Colors.green),
  MenuModel(
      title: 'Meal Box',
      subtitle: '6 Categories & 9 Items',
      price: '₹299',
      color: Colors.orange),
  MenuModel(
      title: 'Catering Menus',
      subtitle: '6 Categories & 9 Items',
      price: '₹299',
      color: Colors.green),
];
List menuList2 = [
  MenuModel(
      title: 'Punjabi Special Menu',
      subtitle: '12 Categories & 40 Items',
      price: '₹219',
      color: Colors.green),
  MenuModel(
      title: 'Meal Box',
      subtitle: '12 Categories & 40 Items',
      price: '₹219',
      color: Colors.green),
  MenuModel(
      title: 'Catering Menus',
      subtitle: '12 Categories & 40 Items',
      price: '₹219',
      color: Colors.green),
];
