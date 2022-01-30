import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
          padding: EdgeInsets.all(10),
          width: 40,
          height: 40,
          color: Colors.white,
          child: Image.asset(
            'assets/images/brandlogo.png',
          )
          // Icon(
          //   Icons.pan_tool,
          //   color: Colors.white,
          //   size: 20,
          // ),
          ),
    );
  }
}
