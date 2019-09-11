import 'package:flutter_web/material.dart';
import 'sub/change_management.dart';

class ChangeManagement extends StatefulWidget {
  final int child;
  ChangeManagement(this.child);
  _ChangeManagementState createState() => _ChangeManagementState();
}

class _ChangeManagementState extends State<ChangeManagement> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        ChangeManagementPage(),
      ],
    );
  }
}
