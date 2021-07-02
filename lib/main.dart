import 'package:flutter/material.dart';

import 'screens/tabs_screen.dart';
import 'utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym Workout',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        primaryColor: Color(0xFFFF4500),
        accentColor: Color(0xFFFF8300),
        canvasColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      routes: {
        AppRoutes.HOME: (ctx) => TabScreen(),
        // AppRoutes.STATISTIC: (ctx) => StatisticScreen(),
      },
    );
  }
}
