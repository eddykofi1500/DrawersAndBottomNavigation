import 'package:flutter/material.dart';

class userInfo extends StatelessWidget {
  const userInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Map args = ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[300],
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Text(
            'Welcome '+ args['username'],
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      );

  }
}
