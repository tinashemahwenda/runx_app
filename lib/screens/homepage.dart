import 'package:flutter/material.dart';
import 'package:runx_app/constants/app_constants.dart';
import 'package:runx_app/widgets/run_event_box.dart';

import '../widgets/view_calendar_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Tinashe',
                        style: TextStyle(
                          color: AppColor.fontColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Welcome Back!',
                        style: TextStyle(
                          color: AppColor.fontColor,
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: AppColor.tileColor,
                    child: Icon(
                      Icons.notifications,
                      color: AppColor.limeGreen,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ViewCalendarBox(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Runs',
                    style: TextStyle(
                      color: AppColor.fontColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColor.limeGreen,
                      decoration: TextDecoration.underline,
                    ),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RunEventBox(),
                  RunEventBox(),
                  RunEventBox(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Training Plans',
                style: TextStyle(
                  color: AppColor.fontColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ));
  }
}
