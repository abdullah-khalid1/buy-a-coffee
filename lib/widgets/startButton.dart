import 'package:flutter/material.dart';
import 'package:foof_app/helpers/appColors.dart';

class StartButton extends StatelessWidget {
  Function onCardClick;

  StartButton({required this.onCardClick});

  // const StartButton({Key? key,) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.purple.shade300,
        highlightColor: Colors.purple.shade300,
        child: Container(
          margin: EdgeInsets.only(left: 50.0, right: 50.0),
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: AppColors.MAIN_COLOR,
              padding: EdgeInsets.all(25.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            onPressed: () {
              this.onCardClick();
            },
            child: Text(
              'Start',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
