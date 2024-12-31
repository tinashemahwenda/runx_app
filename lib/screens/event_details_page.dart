import 'package:flutter/material.dart';

import '../constants/app_constants.dart';

class EventDetailsPage extends StatelessWidget {
  const EventDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: AppMeasure.width,
            height: AppMeasure.height / 2,
            child: Image.asset('assets/images/event-bg.png'),
          )
        ],
      ),
    );
  }
}
