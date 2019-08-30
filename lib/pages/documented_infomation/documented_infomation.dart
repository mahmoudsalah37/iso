import 'package:flutter_web/material.dart';
import 'sub/dashboard.dart';
import 'sub/document_information.dart';

class DocumentedInformation extends StatefulWidget {
  final int child;
  DocumentedInformation(this.child);
  _DocumentedInformationState createState() =>
      _DocumentedInformationState();
}

class _DocumentedInformationState extends State<DocumentedInformation> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        DashboardPage(),
        DocumentInformationPage(),
      ],
    );
  }
}
