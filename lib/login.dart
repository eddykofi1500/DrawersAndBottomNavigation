import 'package:flutter/material.dart';
import 'package:flutter_project_one/pages/user_information.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    routes: {
      '/user': (context) => userInfo(),
    },
  ));


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          foregroundColor: Colors.white,
          title: Text('Khoders World'),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            letterSpacing: 3.0
          ),
        ),
         drawer: Drawer(
           backgroundColor: Colors.deepPurple[200],
         ),
         body: Center(
           child: Padding(
             padding: EdgeInsets.all(15),
             child: Column(
               children: [
                 Padding(
                   padding: EdgeInsets.all(15),
                     child: TextField(
                       controller: myController,
                       decoration: InputDecoration(
                         border: OutlineInputBorder(),
                         labelText: 'Username',
                         hintText: 'Enter username'
                       ),
                     ),
                 ),
                 Padding(
                     padding: EdgeInsets.all(15),
                   child: TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                       border: OutlineInputBorder(),
                       labelText: 'Password',
                       hintText: 'Enter Password'
                     ),
                   ),
                 ),
                 ElevatedButton(
                     onPressed: () {
                       Navigator.pushNamed(context, '/user',arguments: {'username':myController.text});
                     },
                     style: ButtonStyle(
                       backgroundColor: WidgetStatePropertyAll(Colors.blue),
                       foregroundColor: WidgetStatePropertyAll(Colors.white)
                     ),
                     child: Text('Sign In')
                 )
               ],
             ),
           ),
         ),
         );

  }
}
