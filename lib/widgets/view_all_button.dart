import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
    );
  }
}
