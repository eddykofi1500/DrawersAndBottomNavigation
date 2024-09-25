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
        body: GridView.builder(
           itemCount: 40,
            gridDelegate: 
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), 
            itemBuilder:(context,index)=> Container(
             color: Colors.deepPurple,
              margin: EdgeInsets.all(15),
      ) )
        ,
      ),
    );
  }
}
