import 'package:flutter/material.dart';
import 'package:foof_app/helpers/appColors.dart';

import 'CategoryIcon.dart';

class MapBottomArea extends StatelessWidget {
  const MapBottomArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0), color: Colors.white),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Row(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/images/Cappuccino.jpg',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(right: -10, bottom: -10, child: CategoryIcon()),
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cold Coffee',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text('By Gloria Jeans'),
                      Text(
                        '3km Away',
                        style: TextStyle(
                            color: AppColors.MAIN_COLOR, fontSize: 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/ab.jpg',
                  width: 40,
                  fit: BoxFit.cover,
                  height: 40,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cold Coffee',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    'Canal View, Gujranwala - Pakistan',
                    style: TextStyle(color: AppColors.MAIN_COLOR, fontSize: 15),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
