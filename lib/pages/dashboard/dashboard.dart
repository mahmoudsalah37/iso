import 'package:flutter_web/material.dart';

import 'sub/dashboard_page.dart';

class DashboardPage extends StatelessWidget {
  final int indexChild;

  DashboardPage([this.indexChild]);

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: indexChild,
      children: <Widget>[
        DashboardChild(),
      ],
    );
  }
}
