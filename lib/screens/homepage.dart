import 'package:flutter/material.dart';
import 'package:runx_app/constants/app_constants.dart';

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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: AppMeasure.width,
                height: AppMeasure.height / 4,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: AppColor.tileColor,
                  //borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: AppMeasure.width / 3,
                      child: Text(
                        'View Full Calendar For 2025',
                        style: TextStyle(
                          color: AppColor.fontColor,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        child: Text(
                          'View Full Calendar',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        color: AppColor.limeGreen,
                        padding: EdgeInsets.all(15),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
