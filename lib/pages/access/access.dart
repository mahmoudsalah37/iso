import 'package:flutter_web/material.dart';
import 'package:iso/pages/access/sub/access.dart';

class Access extends StatefulWidget {
  final int child;
  Access(this.child);
  _AccessState createState() => _AccessState();
}

class _AccessState extends State<Access> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        AccessPage(),
      ],
    );
  }
}
