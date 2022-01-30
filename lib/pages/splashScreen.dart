import 'package:flutter/material.dart';
import 'package:foof_app/pages/categorylistpage.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => CategoryListPage(),
        ),
      );
    });
    return Container(
      color: Colors.purple.withOpacity(0.8),
      alignment: Alignment.center,
      child: Text(
        'Splash Screen',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
