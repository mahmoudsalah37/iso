import 'package:flutter_web/material.dart';
import 'sub/dashboard.dart';
import 'sub/mrm.dart';
import 'sub/other_meeting.dart';

class Meeting extends StatefulWidget {
  final int child;
  Meeting(this.child);
  _MeetingState createState() => _MeetingState();
}

class _MeetingState extends State<Meeting> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        DashboardPage(),
        MRMPage(),
        OtherMeetingPage(),
      ],
    );
  }
}
