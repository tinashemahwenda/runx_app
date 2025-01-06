import 'package:flutter/material.dart';
import 'package:runx_app/models/events.dart';

import '../constants/app_constants.dart';

class EventDetailsPage extends StatelessWidget {
  final List<RaceEvent> data;
  EventDetailsPage({super.key, required this.data});

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
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60.0, left: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        color: AppColor.tileColor,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: AppColor.limeGreen,
                        ),
                      ),
                    ),
                  ),
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
                          height: AppMeasure.height / 2.5,
                        ),
                        Text(
                          data[1].event,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColor.limeGreen,
                          ),
                        ),
                        Text(
                          data[1].venue,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      'Time: 0800hrs',
                      style: TextStyle(
                        color: AppColor.fontColor,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Text(
                    'This is a ${data[1].event} held at ${data[1].venue}. The event will start at ${data[1].startTime} with distances of ${data[1].distances}',
                    style: TextStyle(
                      color: AppColor.fontColor,
                      height: 2,
                      fontSize: 16,
                    ),
                  ),
                ],
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
