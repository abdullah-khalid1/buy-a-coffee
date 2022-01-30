import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foof_app/helpers/utils.dart';
import 'package:foof_app/models/category.dart';
import 'package:foof_app/pages/selectedCategoryPage.dart';
import 'package:foof_app/widgets/categoryBottom.dart';
import 'package:foof_app/widgets/MycategoryCard.dart';
import 'package:foof_app/widgets/customAppBar.dart';

class CategoryListPage extends StatelessWidget {
  CategoryListPage({Key? key}) : super(key: key);

  List<Category> categories = Utils.getCategoryList();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(),
        drawer: Drawer(),
        body: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      'Select Your Yearning Coffee',
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(bottom: 100),
                      itemCount: categories.length,
                      itemBuilder: (BuildContext buildContext, int index) {
                        return CategoryCard(
                          category: categories[index],
                          onCardClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SelectedCategoryPage(
                                  selectedCategory: this.categories[index],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: CategoryBottomBar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
