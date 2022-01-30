import 'package:flutter/material.dart';
import 'package:foof_app/helpers/appColors.dart';
import 'package:foof_app/helpers/utils.dart';

class WelcomeCustomButton extends StatelessWidget {
  const WelcomeCustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.green,
        highlightColor: Colors.green[500],
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(left: 50.0, right: 50.0),
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.MAIN_COLOR,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: AppColors.MAIN_COLOR,
              width: 4.0,
            ),
          ),
        ),
      ),
    );
  }
}
