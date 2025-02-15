import 'package:flutter/material.dart';
import 'package:runx_app/models/events.dart';
import 'package:runx_app/screens/event_details_page.dart';
import 'package:runx_app/widgets/run_event_box.dart';

import '../constants/app_constants.dart';

class EventPage extends StatelessWidget {
  final List<RaceEvent> event;
  const EventPage({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColor.fontColor,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'All Runs 2025',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.fontColor,
                          fontSize: 25,
                        ),
                      ),
                    ],
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
            SizedBox(
              height: 20,
            ),
            /* Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'January 2025',
                style: TextStyle(
                  color: AppColor.fontColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),*/
            Expanded(
                child: SizedBox(
              height: AppMeasure.height,
              child: ListView.builder(
                itemCount: event.length,
                itemBuilder: (context, index) {
                  if (index < event.length) {
                    final race = event[index];
                    return GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  EventDetailsPage(data: event))),
                      child: RunEventBox(
                        raceTitle: race.event,
                        raceLocation: race.venue,
                        raceDate: race.date,
                      ),
                    );
                  } else {
                    return SizedBox(
                      height: AppMeasure.height,
                    );
                  }
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
