import 'package:flutter/material.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  BottomNavigatorBarPage({Key key}) : super(key: key);

  @override
  _BottomNavigatorBarPageState createState() => _BottomNavigatorBarPageState();
}

class _BottomNavigatorBarPageState extends State<BottomNavigatorBarPage> {
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List _currentWidget = [
    Center(
      child: Text(
        'Burası Home Page',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Burası Works Page',
        style: optionStyle,
      ),
    ),
    Center(
      child: Text(
        'Burası Portrait Page',
        style: optionStyle,
      ),
    )
  ];

  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigator Bar"),
      ),
      body: _currentWidget.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ad_units),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: "Works",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait),
            label: "Portrait",
          ),
        ],
      ),
    );
  }
}
