import 'package:flutter/material.dart';
import 'package:runx_app/constants/app_constants.dart';

import '../widgets/view_calendar_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        body: Column(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                color: AppColor.tileColor,
                width: AppMeasure.width,
                height: AppMeasure.height / 5,
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColor.limeGreen,
                              ),
                              child: Image.asset(
                                'assets/images/circuit.png',
                                width: AppMeasure.width / 10,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PIERS ROAD RUN',
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.limeGreen,
                                  ),
                                ),
                                Text(
                                  'Gerfunkels Grill',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: AppColor.fontColor,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(
                      color: AppColor.fontColor,
                      height: 1,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '05/01/2025',
                          style: TextStyle(
                            color: AppColor.fontColor,
                          ),
                        ),
                        Row(
                          spacing: 5,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColor.fontColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                '5K',
                                style: TextStyle(
                                  color: AppColor.fontColor,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColor.fontColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                '10K',
                                style: TextStyle(
                                  color: AppColor.fontColor,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColor.fontColor,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Text(
                                '15K',
                                style: TextStyle(
                                  color: AppColor.fontColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
