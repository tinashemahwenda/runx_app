import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class ViewCalendarBox extends StatelessWidget {
  const ViewCalendarBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: AppMeasure.width,
        height: AppMeasure.height / 5,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: AppColor.tileColor,
          //borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: AppMeasure.width / 3,
              child: Text(
                'View Full Calendar For 2025',
                style: TextStyle(
                  color: AppColor.fontColor,
                  fontSize: 30,
                  height: 0,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                color: AppColor.limeGreen,
                padding: EdgeInsets.all(15),
                child: Text(
                  'View Full Calendar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
