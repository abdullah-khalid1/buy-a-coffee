import 'package:flutter/material.dart';
import 'package:foof_app/models/category.dart';

import 'CategoryIcon.dart';
import 'categoryname.dart';

class CategoryCard extends StatelessWidget {
  Category category;
  Function onCardClick;

  CategoryCard({required this.category, required this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        this.onCardClick();
      },
      splashColor: Colors.green.withOpacity(0),
      child: Container(
        margin: EdgeInsets.all(7.0),
        height: 150.0,
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/' + category.imgName + '.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent
                      ]),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    CategoryIcon(),
                    SizedBox(
                      width: 10,
                    ),
                    CategoryName(mCategoryName: category.name),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
