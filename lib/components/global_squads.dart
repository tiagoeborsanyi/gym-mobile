import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'bar_chart_graph.dart';
import 'bar_model.dart';

class GlobalSquads extends StatefulWidget {
  @override
  _GlobalSquadsState createState() => _GlobalSquadsState();
}

class _GlobalSquadsState extends State<GlobalSquads> {
  List<BarChartModel> data = [
    BarChartModel(
      year: "2014",
      financial: 250,
      color: charts.ColorUtil.fromDartColor(Color(0xFF47505F)),
    ),
    BarChartModel(
      year: "2015",
      financial: 300,
      color: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    BarChartModel(
      year: "2016",
      financial: 100,
      color: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    BarChartModel(
      year: "2017",
      financial: 450,
      color: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    BarChartModel(
      year: "2018",
      financial: 630,
      color: charts.ColorUtil.fromDartColor(Colors.lightBlueAccent),
    ),
    BarChartModel(
      year: "2019",
      financial: 1000,
      color: charts.ColorUtil.fromDartColor(Colors.pink),
    ),
    BarChartModel(
      year: "2020",
      financial: 400,
      color: charts.ColorUtil.fromDartColor(Colors.purple),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            Column(
              children: [
                Text('Tannage Lifited'),
                Row(
                  children: [
                    Icon(Icons.access_alarm),
                    Text('2,224Kg'),
                  ],
                ),
                Container(
                  child: BarChartGraph(data),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
