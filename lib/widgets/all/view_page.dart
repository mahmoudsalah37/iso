import 'package:flutter_web/material.dart';
import 'package:iso/pages/admin/admin.dart';
import 'package:iso/pages/dashboard/dashboard.dart';

class ViewPage extends StatefulWidget {
  final int page, indexChild;
  ViewPage(this.page, this.indexChild);
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.page,
      children: <Widget>[
        DashboardPage(widget.indexChild),
        AdminPage(widget.indexChild),
      ],
    );
  }
}
