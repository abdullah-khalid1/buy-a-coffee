import 'package:flutter/material.dart';
import 'package:foof_app/models/categoryPart.dart';
import 'package:foof_app/models/subCategory.dart';
import 'package:foof_app/pages/mapPage.dart';
import 'package:foof_app/widgets/CategoryIcon.dart';
import 'package:foof_app/widgets/customAppBar.dart';
import 'package:foof_app/widgets/themeButton.dart';

class DetailPage extends StatefulWidget {
  final SubCategory subCategory;
  const DetailPage({Key? key, required this.subCategory}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final int unitPrice = 15;
  int unitQuantity = 0;
  int mTotalPrice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50.0),
            ),
            child: Stack(children: [
              Container(
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Cappuccino.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.6),
                          Colors.transparent
                        ]),
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryIcon(),
                      Column(
                        children: [
                          Text(
                            'Cappuccino',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                '20.00/lb',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                bottom: 0,
                right: 0,
                left: 0,
              ),
              Positioned(
                right: 10,
                top: 100,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 7.0, bottom: 7.0, left: 5.0, right: 5.0),
                    child: Row(children: [
                      Text(
                        '3',
                        style: TextStyle(color: Colors.white, fontSize: 18.0),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Icon(
                        Icons.shop,
                        color: Colors.white,
                        size: 20,
                      ),
                    ]),
                  ),
                ),
              ),
              CustomAppBar(),
            ]),
          ),
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 12.0),
                  child: Text(
                    'Select',
                    style: TextStyle(fontSize: 15, color: Colors.orange),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.subCategory.parts.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              widget.subCategory.parts
                                  .forEach((CategoryPart categoryPart) {
                                categoryPart.isSelected =
                                    widget.subCategory.parts[index] ==
                                        categoryPart;
                              });
                            });
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.all(10.0),
                                width: 120,
                                height: 150,
                                decoration: BoxDecoration(
                                  border:
                                      widget.subCategory.parts[index].isSelected
                                          ? Border.all(
                                              color: widget.subCategory.color,
                                              width: 4)
                                          : null,
                                  color: Colors.blueGrey.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(12),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/' +
                                          widget.subCategory.parts[index]
                                              .imageName,
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    widget.subCategory.parts[index].name,
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.blueGrey),
                                  ))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20.0),
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30.0),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(1))
                          ]),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                unitQuantity++;
                                mTotalPrice = unitPrice * unitQuantity;
                              });
                            },
                            child: Icon(
                              Icons.add_circle_outline,
                              size: 50.0,
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                '$unitQuantity',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (unitQuantity > 0) {
                                  unitQuantity--;
                                  mTotalPrice = unitPrice * unitQuantity;
                                }
                              });
                            },
                            child: Icon(
                              Icons.remove_circle_outline,
                              size: 50.0,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(text: 'Price'),
                        TextSpan(
                          text: '$unitPrice /lb',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' ${mTotalPrice.toString()}'),
                      ]),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ThemeButton(
                      label: 'Login',
                      icon: Icon(Icons.shopping_cart),
                      onClick: () {},
                    ),
                    ThemeButton(
                      label: 'Location',
                      color: Colors.yellow.shade900,
                      icon: Icon(Icons.location_pin),
                      onClick: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MapPage(),
                          ),
                        );
                      },
                    ),
                  ],
                )
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
