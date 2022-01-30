import 'package:flutter/material.dart';
import 'package:foof_app/helpers/appColors.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  Color themeColor;

  CustomAppBar({this.themeColor = Colors.black});

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80.0);
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
          width: 40,
          height: 40,
          child: Image.asset('assets/images/brandlogo.png')),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: AppColors.MAIN_COLOR,
      ),
      actions: [
        Container(
          padding: EdgeInsets.all(10.0),
          child: ClipOval(
            child: Image.asset(
              "assets/images/ab.jpg",
            ),
          ),
        ),
      ],
    );
  }
}
