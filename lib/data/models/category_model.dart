import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final bool active;

  CategoryModel({required this.name, required this.active});
}

List categoryData = [
  CategoryModel(name: "샤워 캡", active: true),
  CategoryModel(name: "샤워 가운", active: false),
  CategoryModel(name: "소품", active: false),
];