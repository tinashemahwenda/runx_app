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
      AppColor.tileColor = const Color.fromARGB(255, 44, 44, 44);
      AppColor.limeGreen = const Color.fromARGB(255, 200, 249, 4);
      AppColor.fontColor = Colors.white;

      return MaterialApp(
        home: HomePage(),
        theme: ThemeData(fontFamily: 'Manrope'),
        debugShowCheckedModeBanner: false,
      );
    });
  }
}
