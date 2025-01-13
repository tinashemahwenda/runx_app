import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import 'view_all_button.dart';

class TrainingPlanBox extends StatelessWidget {
  final String distanceLength;
  const TrainingPlanBox({super.key, required this.distanceLength});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          Container(
            width: AppMeasure.width / 2,
            height: AppMeasure.height / 3.5,
            color: AppColor.tileColor,
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Beginner',
                  style: TextStyle(
                    color: AppColor.fontColor,
                    fontSize: 10,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        distanceLength,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 80,
                          color: AppColor.fontColor,
                        ),
                      ),
                      ViewAllButton(
                        buttonText: 'View Plan',
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
