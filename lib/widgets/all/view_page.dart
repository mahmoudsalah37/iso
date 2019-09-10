import 'package:flutter_web/material.dart';
import 'package:iso/pages/access/access.dart';
import 'package:iso/pages/context/context.dart';
import 'package:iso/pages/hr/hr.dart';
import 'package:iso/pages/policy/policy.dart';
import 'package:iso/pages/risk_management/risk_management.dart';
import 'package:iso/pages/scope/scope.dart';
import 'package:iso/pages/documented_infomation/documented_infomation.dart';

class ViewPage extends StatefulWidget {
  final int page, child;
  ViewPage(this.page, this.child);
  _ViewPageState createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.page,
      children: <Widget>[
        Policy(widget.child),
        Scope(widget.child),
        Context(widget.child),
        DocumentedInformation(widget.child),
        HR(widget.child),
        Access(widget.child),
        RiskManagement(widget.child),
      ],
    );
  }
}
