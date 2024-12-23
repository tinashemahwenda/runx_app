import 'package:flutter/material.dart';
import 'package:runx_app/constants/app_constants.dart';

import 'screens/homepage.dart';

void main() {
  runApp(RunXApp());
}

class RunXApp extends StatelessWidget {
  const RunXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      AppMeasure.width = MediaQuery.of(context).size.width;
      AppMeasure.height = MediaQuery.of(context).size.height;
      AppColor.backgroundColor = const Color.fromARGB(255, 16, 16, 16);
      AppColor.limeGreen = const Color.fromARGB(255, 16, 16, 16);
      AppColor.tileColor = const Color.fromARGB(255, 200, 249, 4);
      return MaterialApp(
        home: HomePage(),
      );
    });
  }
}
