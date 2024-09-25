import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_one/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            //one
            Expanded(
             // flex: 2,
              child: Container(
               // height: 200,
                color: Colors.deepPurple[200],
              ),
            ),

            //two
            Expanded(
              //flex: 1,
              child: Container(
               // height: 200,
                color: Colors.deepPurple[300],
              ),
            ),

            //three
            Expanded(
              //flex: 3,
              child: Container(
               // height: 200,
                color: Colors.deepPurple[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
