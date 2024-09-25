import 'package:flutter/material.dart';

class pageOne extends StatelessWidget {
  const pageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Text('Page one'),
       ),
        // appBar: AppBar(
        //   backgroundColor: Colors.blue,
        //   foregroundColor: Colors.white,
        //   title: Text('HOME'),
        //   centerTitle: true,
        // ),
      );
  }
}
