import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foof_app/models/category.dart';
import 'package:foof_app/models/categoryPart.dart';

class SubCategory {
  String name;
  IconData icon;
  Color color;
  String imgName;
  List<CategoryPart> parts;
  SubCategory({
    required this.name,
    required this.icon,
    required this.color,
    required this.imgName,
    required this.parts,
  });
  void a() {}
}
