import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class ViewAllButton extends StatelessWidget {
  final String buttonText;
  const ViewAllButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        color: AppColor.limeGreen,
        padding: EdgeInsets.all(15),
        child: Text(
          buttonText,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
