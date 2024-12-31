import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
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
                  height: AppMeasure.height / 2,
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
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Whether you're an experienced runner or just getting started, this event offers a fun and supportive environment for all fitness levels. With scenic routes, enthusiastic participants, and a chance to challenge yourself, it's the perfect opportunity to get moving, set personal goals, and enjoy the great outdoors. Participants will receive a race medal and a goody bag, with prizes for top finishers in various categories",
                style: TextStyle(
                  color: AppColor.fontColor,
                  height: 2,
                  fontSize: 16,
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Container(
                width: AppMeasure.width / 2,
                padding: EdgeInsets.all(20),
                color: AppColor.limeGreen,
                child: Center(
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
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
