import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: AppMeasure.width,
                height: AppMeasure.height / 2,
                child: Image.asset(
                  'assets/images/event-bg.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                width: AppMeasure.width,
                height: AppMeasure.height,
                color: Colors.black54,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: AppMeasure.width,
                  height: AppMeasure.height / 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: AppMeasure.height / 2.8,
                      ),
                      Text(
                        'Piers Road Run',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: AppColor.limeGreen,
                        ),
                      ),
                      Text(
                        'Gerfunkels Grill | 05/01/2025',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.fontColor,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
