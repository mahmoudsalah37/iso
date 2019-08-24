import 'package:flutter_web/material.dart';
import 'package:iso/widgets/all/drawer_widget/sub/items/sub/documented_infomation/documented_infomation.dart';
import 'package:iso/widgets/all/drawer_widget/sub/items/sub/non_conformance/non_conformance.dart';
import 'package:iso/widgets/all/drawer_widget/sub/items/sub/report_and_data_analysis/report_and_data_analysis.dart';
import 'sub/help/help.dart';
import 'sub/internal_audit/internal_audit.dart';
import 'sub/mrm/mrm.dart';
import 'sub/quality/quality.dart';
import 'sub/context_of_organisations/context_of_organisations.dart';
import 'sub/operations/operations.dart';
import 'sub/admin/admin.dart';
import 'sub/dashboard/dashboard.dart';
import 'sub/communication/communication.dart';
import 'sub/design_and_development/design_and_development.dart';
import 'sub/hr/hr.dart';
import 'sub/marketing/marketing.dart';
import 'sub/policy_and_objective/policy_and_objective.dart';
import 'sub/purchase/purchase.dart';
import 'sub/risk_and_opportunity/risk_and_opportunity.dart';

ListView items() {
  return ListView(
    shrinkWrap: true,
    children: <Widget>[
      Dashboard(),
      Admin(),
      Comminucation(),
      ContextOfOrganisations(),
      RiskAndOpportunity(),
      HR(),
      Marketing(),
      DesignAndDevelopent(),
      Purchase(),
      Operations(),
      PolicyAndObjective(),
      Quality(),
      DocumentedInforamation(),
      NonConformance(),
      InternalAudit(),
      MRM(),
      ReportAndAnalysis(),
      Help(),
      SizedBox(height: 50.0,)
    ],
  );
}
