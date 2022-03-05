import 'package:flutter/material.dart';
import 'package:yisafa/screens/button_change_screen_color.dart';
import 'package:yisafa/screens/change_navbar_color.dart';
import 'package:yisafa/screens/counter_screen.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  int count = 0;
  Color screenColor = Colors.brown.shade200;
  int screenCount = 0;
  int appBarCount = 0;
  int bottomBarCount = 0;
  Color bottomNavbarColor = Colors.white;
  Color appBarColor = Colors.blue;

  List<Color> screenColorList = [Colors.amber, Colors.yellow, Colors.orange];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: screenColor,
      drawer: Drawer(
        backgroundColor: Colors.brown.shade100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Drawer'),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          'Home Page',
        ),
      ),
      body: [
        CounterScreen(
            count: count,
            increment: () {
              setState(() {
                count++;
              });
            }),
        ButtonChangeScreenColor(
          changeScreenColor: () {
            if (screenCount == 2) {
              setState(() {
                screenColor = screenColorList[screenCount];
                screenCount = 0;
              });
            } else {
              setState(() {
                screenColor = screenColorList[screenCount];
                screenCount++;
              });
            }
          },
        ),
        ChangeNavBarColor(
          changeAppBarColor: () {
            if (appBarCount == 2) {
              setState(() {
                appBarColor = screenColorList[appBarCount];
                appBarCount = 0;
              });
            } else {
              setState(() {
                appBarColor = screenColorList[appBarCount];
                appBarCount++;
              });
            }
          },
          changeBottomBarColor: () {
            if (bottomBarCount == 2) {
              setState(() {
                bottomNavbarColor = screenColorList[bottomBarCount];
                bottomBarCount = 0;
              });
            } else {
              setState(() {
                bottomBarCount++;
                bottomNavbarColor = screenColorList[bottomBarCount];
                bottomBarCount++;
              });
            }
          },
        ),
      ][_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: bottomNavbarColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.lightGreen,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.lightBlue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
