import 'package:flutter_web/material.dart';
import 'sub/competence_evaluation.dart';
import 'sub/dashboard.dart';
import 'sub/job_description.dart';

import 'sub/training_plan.dart';

class HR extends StatefulWidget {
  final int child;
  HR(this.child);
  _HRState createState() => _HRState();
}

class _HRState extends State<HR> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        DashboardHRPage(),
        JobDescriptionPage(),
        TrainingPlanPage(),
        CompentenceEvaluationPage(),
      ],
    );
  }
}
