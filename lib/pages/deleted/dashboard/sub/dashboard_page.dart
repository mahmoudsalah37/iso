import 'package:flutter_web/material.dart';

class DashboardChild extends StatefulWidget {
  DashboardChild({Key key}) : super(key: key);

  _DashboardChildState createState() => _DashboardChildState();
}

class _DashboardChildState extends State<DashboardChild> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('dashbord child'),
    );
  }
}
