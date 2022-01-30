import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  final String mCategoryName;

  const CategoryName({Key? key, required this.mCategoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      mCategoryName,
      style: TextStyle(color: Colors.white, fontSize: 20),
    );
  }
}
