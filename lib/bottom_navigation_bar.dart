import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.blue,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            //home
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),
            //profile
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile'
            ),
            //settings
            BottomNavigationBarItem(
                icon: Icon(Icons.settings)
            )

          ]
      ),
    );
  }
}
