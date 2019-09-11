import 'package:flutter_web/material.dart';
import 'package:iso/pages/access/access.dart';
import 'package:iso/pages/change_management/change_management.dart';
import 'package:iso/pages/context/context.dart';
import 'package:iso/pages/hr/hr.dart';
import 'package:iso/pages/objectives/objectives.dart';
import 'package:iso/pages/policy/policy.dart';
import 'package:iso/pages/risk_management/risk_management.dart';
import 'package:iso/pages/scope/scope.dart';
import 'package:iso/pages/documented_infomation/documented_infomation.dart';
import 'package:iso/widgets/all/drawer_widget/sub/items/sub/communication/communication.dart';

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
        //0 Policy
        Policy(widget.child),
        //1 Scope
        Scope(widget.child),
        //2 Context
        Context(widget.child),
        //3 DocumentedInformation
        DocumentedInformation(widget.child),
        //4 HR
        HR(widget.child),
        //5 Access
        Access(widget.child),
        //6 RiskManagement
        RiskManagement(widget.child),
        //7 ChangeManagement
        ChangeManagement(widget.child),
        //8 Objectives
        Objectives(widget.child),
        //9 Comminucation
        Comminucation(),
      ],
    );
  }
}
