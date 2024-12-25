import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Runs 2025',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColor.fontColor,
                    fontSize: 25,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: AppColor.tileColor,
                  child: Icon(
                    Icons.bookmark,
                    color: AppColor.limeGreen,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
