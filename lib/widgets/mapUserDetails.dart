import 'package:flutter/material.dart';
import 'package:foof_app/helpers/appColors.dart';

class MapUserDetail extends StatelessWidget {
  const MapUserDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 100,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        margin:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.MAIN_COLOR),
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/ab.jpg'),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Abdullah Khalid',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  Text(
                    'My Location',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.MAIN_COLOR),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.location_pin,
              color: AppColors.MAIN_COLOR,
            )
          ],
        ),
      ),
    );
  }
}
