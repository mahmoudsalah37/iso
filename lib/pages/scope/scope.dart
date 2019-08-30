import 'package:flutter_web/material.dart';
import 'sub/exclusions.dart';

import 'sub/qms_scope_page.dart';


class Scope extends StatefulWidget {
  final int  child;
  Scope( this.child);
  _ScopeState createState() => _ScopeState();
}

class _ScopeState extends State<Scope> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        GMSScopePage(),
        ExclusionsPage()
      ],
    );
  }
}
