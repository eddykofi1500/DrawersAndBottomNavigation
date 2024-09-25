import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          //scrollDirection: Axis.horizontal,
          children: [
            Container(
              height: 200,
                color: Colors.deepPurple,
            ),
            Container(
              height: 200,
              color: Colors.deepPurple[400],
            ),
            Container(
              height: 200,
              color: Colors.deepPurple[200],
            ),
            Container(
              height: 200,
              color: Colors.deepPurple[300],
            ),
            Container(
              height: 200,
              color: Colors.deepPurple[500],
            )
          ],
        ),
      ),
    );
  }
}
