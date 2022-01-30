import 'package:flutter/material.dart';

import 'package:foof_app/widgets/WelcomePageCustomButton.dart';
import 'package:foof_app/widgets/startButton.dart';

import 'categorylistpage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.7,
              child: Image.asset(
                'assets/images/landingPageImage.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  'assets/images/brandlogo.png',
                  height: 201,
                  width: 201,
                ),
              ),
              SizedBox(
                height: 49,
              ),
              Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 41,
                    color: Colors.white),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                'To The Buy A Coffee App',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21.5,
                    color: Colors.white),
              ),
              SizedBox(
                height: 53,
              ),
              StartButton(
                onCardClick: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryListPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 22.0,
              ),
              WelcomeCustomButton(),
            ],
          ),
        ],
      ),
    );
  }
}
