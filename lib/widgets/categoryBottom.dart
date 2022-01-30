import 'package:flutter/material.dart';

class CategoryBottomBar extends StatelessWidget {
  const CategoryBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.location_pin,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.green,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
