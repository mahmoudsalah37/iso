import 'package:flutter_web/material.dart';
import 'sub/dashboard.dart';
import 'sub/audit_report.dart';
import 'sub/audit_plan.dart';
import 'sub/auditors_list.dart';

class InternalAudit extends StatefulWidget {
  final int child;
  InternalAudit(this.child);
  _InternalAuditState createState() => _InternalAuditState();
}

class _InternalAuditState extends State<InternalAudit> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        AuditorsListPage(),
        AuditPlanPage(),
        AuditReportPage(),
        DashboardPage(),
      ],
    );
  }
}
