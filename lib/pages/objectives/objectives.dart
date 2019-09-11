import 'package:flutter_web/material.dart';
import 'sub/dashboard.dart';
import 'sub/objectives.dart';

class Objectives extends StatefulWidget {
  final int child;
  Objectives(this.child);
  _ObjectivesState createState() => _ObjectivesState();
}

class _ObjectivesState extends State<Objectives> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        DashboardPage(),
        ObjectivesPage(),
      ],
    );
  }
}
