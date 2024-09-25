import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void Calculate() {
    print('loading calculation');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: Calculate,
            child: Container(
                height: 200,
              width: 200,
              color: Colors.deepPurple[200],
              child: Center(
                child: Text('Tap me'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
