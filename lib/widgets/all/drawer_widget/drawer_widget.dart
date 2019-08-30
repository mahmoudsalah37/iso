import 'package:flutter_web/material.dart';

import 'sub/items/items.dart';

class DrawerWidget extends StatefulWidget {
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(175,28,53, 1.0),
      child: items(),
    );
  }
}
