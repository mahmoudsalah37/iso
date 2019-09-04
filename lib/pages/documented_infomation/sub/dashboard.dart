import 'package:flutter_web/material.dart';
// import 'package:iso/packages/charts/flutter.dart' as charts;
import 'package:iso/packages/pie_chart/pie_chart.dart';

class DashboardPage extends StatefulWidget {
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // List<charts.Series> seriesList = [];
  Map<String, double> dataMap = Map();

  @override
  Widget build(BuildContext context) {
    dataMap.putIfAbsent("processes", () => 5);
    dataMap.putIfAbsent("procedure", () => 3);
    dataMap.putIfAbsent("work instruction", () => 1);
    dataMap.putIfAbsent("external document", () => 1);
    return Container(
      child: Center(
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: <Widget>[
            PieChart(
              dataMap: dataMap,
              legendFontColor: Colors.blueGrey[900],
              legendFontSize: 14.0,
              legendFontWeight: FontWeight.w500,
              animationDuration: Duration(milliseconds: 800),
              chartLegendSpacing: 32.0,
              chartRadius: MediaQuery.of(context).size.width / 9.0,
              showChartValuesInPercentage: true,
              showChartValues: true,
              chartValuesColor: Colors.blueGrey[900].withOpacity(0.9),
            ),
          ],
        ),
      ),
    );
  }
}
