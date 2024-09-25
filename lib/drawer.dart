import 'package:flutter/material.dart';
import 'package:flutter_project_one/pages/page_one.dart';
import 'package:flutter_project_one/pages/page_three.dart';
import 'package:flutter_project_one/pages/page_two.dart';
void main() {
  runApp(MaterialApp(
    home: const drawer(),
    routes: {
      '/home': (context) => pageOne(),
      '/settings': (context) => pageTwo(),
      '/contact': (context) => pageThree()
    },
  ));


}

class drawer extends StatefulWidget {

  const drawer({super.key});

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  int page_index = 0;
  final List _Listpages = [
    pageOne(),
    pageTwo(),
    pageThree()
  ];

  void updateCurrentIndex(int value){
    print('value of index '+ value.toString());
    setState(() {
      page_index = value ;
      print('index value in the setState '+value.toString());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[500],
          foregroundColor: Colors.white,
        ),
        body: _Listpages[page_index],
        drawer: Drawer(
          backgroundColor: Colors.blue[100],
          child:  Column(
            children: [
              DrawerHeader(
                child: Icon(
                    Icons.flight_outlined,
                    size: 40,
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/home');
                },
                leading: Icon(Icons.home),
                title: Text(
                    'H O M E',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/settings');
                },
                leading: Icon(Icons.settings),
                title: Text(
                  'S E T T I N G S',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/contact');
                },
                leading: Icon(Icons.contact_page),
                title: Text(
                  'C O N T A C T',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page_index,
          onTap: updateCurrentIndex,
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
                icon: Icon(Icons.settings),
                label: 'Settings'
            )

          ]
      ),
      );
  }
}
