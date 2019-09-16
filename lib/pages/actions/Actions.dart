import 'package:flutter_web/material.dart';
import 'package:iso/pages/actions/sub/actions.dart';

class Actions extends StatefulWidget {
  final int child;
  Actions(this.child);
  _ActionsState createState() => _ActionsState();
}

class _ActionsState extends State<Actions> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        ActionsPage(),
      ],
    );
  }
}
