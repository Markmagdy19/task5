
import 'package:flutter/material.dart';

import '../screens/more_Screen.dart';





class Navigatebar extends StatefulWidget {
  const Navigatebar({super.key});

  @override
  _NavigatebarState createState() => _NavigatebarState();
}

int _selectedIndex = 0;

class _NavigatebarState extends State<Navigatebar> {
  final List<Widget> listWidget = [
    const MoreScreen(),
   // const HomePage(),
    //const HomeScreen() ,
    //const SettingsPageUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            setState(() {
              _selectedIndex = val;
            });
          },
          currentIndex: _selectedIndex,
          //backgroundColor: Colors.blueAccent,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey,
          //selectedFontSize: 20,
          //unselectedFontSize: 14,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),

          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Store"),
            BottomNavigationBarItem(
                icon: Icon(Icons.edit), label: "edit"),

          ],
        ),
        body: Container(child: listWidget.elementAt(_selectedIndex)));
  }
}
