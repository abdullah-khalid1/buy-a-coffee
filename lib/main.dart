import 'package:flutter/material.dart';
import 'package:foof_app/models/category.dart';
import 'package:foof_app/pages/WelcomePage.dart';
import 'package:foof_app/pages/aboutUs.dart';

import 'package:foof_app/pages/myMap.dart';

import 'helpers/utils.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Category> categories = Utils.getCategoryList();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ContactUs(),
        //WelcomePage(),
      ),
    );
  }
}
