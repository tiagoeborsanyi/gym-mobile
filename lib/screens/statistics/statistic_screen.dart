import 'package:flutter/material.dart';

import 'components/global_squads.dart';

class StatisticScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Statistics'),
          backgroundColor: Theme.of(context).accentColor,
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Global Squads',
              ),
              Tab(
                text: 'Exercise Specific',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GlobalSquads(),
            Center(
              child: Text('Specific'),
            ),
          ],
        ),
      ),
    );
  }
}
