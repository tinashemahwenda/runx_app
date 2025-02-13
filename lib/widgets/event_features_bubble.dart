import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class EventFeaturesBubble extends StatelessWidget {
  final IconData bubbleIcon;
  final String bubbleText;
  const EventFeaturesBubble(
      {super.key, required this.bubbleIcon, required this.bubbleText});

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
            bubbleIcon,
            color: AppColor.limeGreen,
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text(
              bubbleText,
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
