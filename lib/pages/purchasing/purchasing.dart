import 'package:flutter_web/material.dart';
import 'package:iso/pages/purchasing/sub/approver_providers_list.dart';
import 'package:iso/pages/purchasing/sub/providers_evaluation.dart';
import 'package:iso/pages/purchasing/sub/purchase_order.dart';

class Purchase extends StatefulWidget {
  final int child;
  Purchase(this.child);
  _PurchaseState createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: widget.child,
      children: <Widget>[
        ApproverprovidersListPage(),
        ProvidersEvaluationPage(),
        PurchaseOrderPage(),
      ],
    );
  }
}
