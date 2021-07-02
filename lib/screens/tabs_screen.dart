import 'package:flutter/material.dart';

import 'dashboard_screen.dart';
import 'statistic_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedScreenIndex = 0;
  late List<Map<String, dynamic>> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {
        'title': 'Dashboard',
        'screen': DashboardScreen(),
      },
      {
        'title': 'Statistics',
        'screen': StatisticScreen(),
      },
      {
        'title': 'List Exercises',
        'screen': Center(child: Text('List Exercises')),
      },
      {
        'title': 'Configurations',
        'screen': Center(child: Text('Config screen')),
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
          )
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
