import 'package:flutter/material.dart';
import 'package:foof_app/helpers/appColors.dart';
import 'package:foof_app/helpers/utils.dart';
import 'package:foof_app/models/onBoardingContent.dart';
import 'package:foof_app/widgets/WelcomePageCustomButton.dart';
import 'package:foof_app/widgets/startButton.dart';
import 'package:foof_app/widgets/themeButton.dart';

class OnBoardPage extends StatefulWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  _OnBoardPageState createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  List<OnBoardingContent> _boardingContent = Utils.getOnboardingContent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: PageView(
                children: List.generate(
                  _boardingContent.length,
                  (index) => Container(
                    margin: EdgeInsets.only(left: 30, right: 30, top: 50),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: AppColors.MAIN_COLOR, offset: Offset.zero),
                        ],
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Image.asset(
                            'assets/images/${_boardingContent[index].imgName}')
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            WelcomeCustomButton(),
          ],
        ),
      ),
    );
  }
}
