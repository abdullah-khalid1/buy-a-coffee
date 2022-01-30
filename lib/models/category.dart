import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foof_app/models/subCategory.dart';

class Category {
  String name;
  IconData icon;
  Color color;
  String imgName;
  List<SubCategory> subCategory;

  Category(
      {required this.name,
      required this.color,
      required this.icon,
      required this.imgName,
      required this.subCategory});
}
