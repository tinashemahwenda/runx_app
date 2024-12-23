import 'package:flutter/material.dart';

import 'screens/homepage.dart';

void main() {
  runApp(RunXApp());
}

class RunXApp extends StatelessWidget {
  const RunXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
