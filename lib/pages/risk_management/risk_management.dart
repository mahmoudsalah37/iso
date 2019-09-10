import 'package:flutter_web/material.dart';
import 'sub/risk_assessment.dart';
import 'sub/risk_team.dart';
import 'sub/dashboard.dart';

class RiskManagement extends StatefulWidget {
  final int child;
  RiskManagement(this.child);
  _RiskManagementState createState() => _RiskManagementState();
}

class _RiskManagementState extends State<RiskManagement> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        DashboardPage(),
        RiskTeamPage(),
        RiskAssessmentPage()
      ],
    );
  }
}
