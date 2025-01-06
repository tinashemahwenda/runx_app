import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class EventFeaturesBubble extends StatelessWidget {
  const EventFeaturesBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColor.backgroundColor,
          border: Border.all(
            width: 1,
            color: AppColor.tileColor,
          )),
      child: Column(
        children: [
          Icon(
            Icons.watch,
            color: AppColor.limeGreen,
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              '0800hrs',
              style: TextStyle(
                color: AppColor.fontColor,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
