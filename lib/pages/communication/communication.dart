import 'package:flutter_web/material.dart';
import 'sub/communication.dart';

class Communication extends StatefulWidget {
  final int child;
  Communication(this.child);
  _CommunicationState createState() => _CommunicationState();
}

class _CommunicationState extends State<Communication> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        CommunicationPage(),
      ],
    );
  }
}
