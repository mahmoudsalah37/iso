import 'package:flutter_web/material.dart';
import 'package:iso/pages/policy/sub/policy_page.dart';

class Policy extends StatefulWidget {
  final int child;
  Policy(this.child);
  _PolicyState createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        PolicyPage(),
      ],
    );
  }
}
