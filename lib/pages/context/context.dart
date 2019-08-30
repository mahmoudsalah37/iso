import 'package:flutter_web/material.dart';
import 'sub/interested_parties.dart';
import 'sub/understanding_of_organization_context.dart';

class Context extends StatefulWidget {
  final int child;
  Context(this.child);
  _ContextState createState() => _ContextState();
}

class _ContextState extends State<Context> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        UnderstandingOfOrganizationContextPage(),
        InterenstedPartiesPage()
      ],
    );
  }
}
