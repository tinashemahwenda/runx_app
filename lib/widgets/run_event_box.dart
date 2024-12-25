import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class RunEventBox extends StatelessWidget {
  const RunEventBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        color: AppColor.tileColor,
        width: AppMeasure.width / 1.2,
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
    );
  }
}
