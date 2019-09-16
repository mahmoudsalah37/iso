import 'sub/actions/actions.dart' as prefix0;
import 'package:flutter_web/material.dart';
import 'sub/scope/scope.dart';
import 'sub/access/access.dart';
import 'sub/change_management/change_management.dart';
import 'sub/customer_focus/customer_focus.dart';
import 'sub/policy/policy.dart';
import 'sub/design/design.dart';
import 'sub/documented_infomation/documented_infomation.dart';
import 'sub/meeting/meeting.dart';
import 'sub/objectives/objectives.dart';
import 'sub/property_of_customers_and_external_providers/property_of_customers_and_external_providers.dart';
import 'sub/risk_management/risk_management.dart';
import 'sub/context/context.dart';
import 'sub/internal_audit/internal_audit.dart';
import 'sub/operations/operations.dart';
import 'sub/communication/communication.dart';
import 'sub/hr/hr.dart';
import 'sub/purchase/purchase.dart';

ListView items() {
  return ListView(
    shrinkWrap: true,
    children: <Widget>[
      SizedBox(height: 5.0),
      Policy(),
      Scope(),
      Context(),
      DocumentedInforamation(),
      HR(),
      Access(),
      RiskManagment(),
      ChangeManagement(),
      Objectives(),
      Comminucation(),
      Purchase(),
      Design(),
      Property(),
      InternalAudit(),
      Meeting(),
      prefix0.Actions(),
      Operations(),
      CustomerFocus(),
      SizedBox(height: 50.0)
    ],
  );
}
