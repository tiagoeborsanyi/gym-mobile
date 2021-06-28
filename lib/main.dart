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
        canvasColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Gym Workout',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            Container(
              width: 50,
              height: 50,
              // color: Colors.amber,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
              child: Text(''),
            )
          ],
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
