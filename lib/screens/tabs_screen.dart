import 'package:flutter/material.dart';

import 'dashboard_screen.dart';
import 'statistic_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedScreenIndex = 0;
  List<Map<String, dynamic>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        'title': 'Dashboard',
        'screen': DashboardScreen(),
        'action': 'person',
      },
      {
        'title': '',
        'screen': StatisticScreen(),
        'action': 'share',
      },
      {
        'title': 'List Exercises',
        'screen': Center(child: Text('List Exercises')),
        'action': '',
      },
      {
        'title': 'Configurations',
        'screen': Center(child: Text('Config screen')),
        'action': '',
      }
    ];
  }

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _screens[_selectedScreenIndex]['title'],
          style: TextStyle(
            color: Colors.grey.shade700,
            fontWeight: FontWeight.w900,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          if (_screens[_selectedScreenIndex]['action'] == 'person')
            Container(
              width: 50,
              height: 50,
              // color: Colors.amber,
              margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade400,
              ),
              child: IconButton(
                icon: Icon(Icons.person),
                tooltip: 'Profile',
                onPressed: () {},
              ),
            ),
          if (_screens[_selectedScreenIndex]['action'] == 'Share')
            TextButton(
                onPressed: () {},
                child: Text(
                  'Share',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ))
        ],
      ),
      body: _screens[_selectedScreenIndex]['screen'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Colors.green.shade100,
        unselectedItemColor: Colors.grey.shade400,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined),
            label: 'Graphs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.clear_all_outlined),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
