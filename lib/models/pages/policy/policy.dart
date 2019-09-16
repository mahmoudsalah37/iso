// To parse this JSON data, do
//
//     final policyModel = policyModelFromJson(jsonString);

import 'dart:convert';

List<PolicyModel> policyModelFromJson(String str) => List<PolicyModel>.from(
    json.decode(str).map((x) => PolicyModel.fromJson(x)));

String policyModelToJson(List<PolicyModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PolicyModel {
  int id;
  String policy;

  PolicyModel({
    this.id,
    this.policy,
  });

  factory PolicyModel.fromJson(Map<String, dynamic> json) => PolicyModel(
        id: json["id"],
        policy: json["policy"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "policy": policy,
      };
}
