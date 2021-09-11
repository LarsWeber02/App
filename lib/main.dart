import 'package:akne/Pages/Home_Page.dart';
import 'package:akne/Pages/Stufenzusatz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Uebersicht()));

class Uebersicht extends StatefulWidget {
  const Uebersicht({Key? key}) : super(key: key);

  @override
  _UebersichtState createState() => _UebersichtState();
}

class _UebersichtState extends State<Uebersicht> {



  final screens = [
    Startseite(),
    Stufenzusatz(),
    Center(child: Container(child: Text('Kalender'))),
    Center(child: Container(child: Text('Home')))
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: IndexedStack(
        index: _currentIndex,
        children: screens
      ),
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(35, 112, 192, 1),
        unselectedItemColor: Colors.white60,
        selectedItemColor: Colors.white,
        iconSize: 30,
        selectedFontSize: 18,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              backgroundColor: Color.fromRGBO(35, 112, 192, 1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Zusatz',
              backgroundColor: Color.fromRGBO(35, 112, 192, 1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Kalender',
              backgroundColor: Color.fromRGBO(35, 112, 192, 1)),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color.fromRGBO(35, 112, 192, 1)),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}



