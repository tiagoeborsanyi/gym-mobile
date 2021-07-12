import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final data = [
    {'num': '25', 'text': 'Workouts\n completed'},
    {'num': '103', 'text': 'Workouts\n completed'},
    {'num': '70Kg', 'text': 'Workouts\n completed'},
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 2,
                  ),
                  top: BorderSide(
                    color: Colors.grey.shade300,
                    width: 2,
                  ),
                ),
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) => buildItemDash(context, index),
              ),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey.shade300,
                    width: 2,
                  ),
                ),
              ),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 85,
                        width: 70,
                        margin: EdgeInsets.only(right: 20),
                        decoration:
                            BoxDecoration(color: Theme.of(context).accentColor),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '22',
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              'MAY',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Previous workout',
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            'Quad & Deltoids',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '7 exercises completed',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    child: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      size: 35,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'MY WORKOUT',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey.shade600),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Show All',
                          style: TextStyle(fontSize: 19),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('data'),
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }

  Widget buildItemDash(BuildContext context, int index) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 3,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: Colors.grey.shade300,
              width: index == 1 ? 2 : 0,
            ),
            left: BorderSide(
              color: Colors.grey.shade300,
              width: index == 1 ? 2 : 0,
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              data[index]['num'],
              style: TextStyle(fontSize: 25.0),
            ),
            Text(
              'Workouts\n completed',
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
