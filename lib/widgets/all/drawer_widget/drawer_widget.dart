import 'package:flutter_web/material.dart';
import 'package:iso/styles/all/all.dart';

import 'sub/items/items.dart';

class DrawerWidget extends StatefulWidget {
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorSubMain,
      child: items(),
    );
  }
}
