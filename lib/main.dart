import 'package:flutter/material.dart';

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
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Gym Workout'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('bbotao'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
