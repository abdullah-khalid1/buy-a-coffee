import 'package:flutter/material.dart';
import 'package:foof_app/models/category.dart';
import 'package:foof_app/widgets/CategoryIcon.dart';
import 'package:foof_app/widgets/customAppBar.dart';
import 'package:foof_app/pages/detailPage.dart';

class SelectedCategoryPage extends StatelessWidget {
  final Category selectedCategory;

  const SelectedCategoryPage({Key? key, required this.selectedCategory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  CategoryIcon(),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    selectedCategory.name,
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(
                      this.selectedCategory.subCategory.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(
                                subCategory:
                                    selectedCategory.subCategory[index]),
                          ),
                        );
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              // margin: EdgeInsets.only(top: 30.0),
                              padding: EdgeInsets.all(5.0),
                              child: ClipOval(
                                child: Image.asset(
                                  selectedCategory.subCategory[index].imgName,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              selectedCategory.subCategory[index].name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
