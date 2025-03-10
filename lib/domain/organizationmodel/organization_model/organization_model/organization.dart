import 'package:json_annotation/json_annotation.dart';

part 'organization.g.dart';

@JsonSerializable()
class Organization {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_name')
  String? orgName;
  @JsonKey(name: 'org_email')
  String? orgEmail;
  @JsonKey(name: 'org_phone')
  dynamic orgPhone;
  @JsonKey(name: 'org_address')
  dynamic orgAddress;
  @JsonKey(name: 'logo_url')
  dynamic logoUrl;
  @JsonKey(name: 'subscription_plan')
  String? subscriptionPlan;

  Organization({
    this.id,
    this.orgName,
    this.orgEmail,
    this.orgPhone,
    this.orgAddress,
    this.logoUrl,
    this.subscriptionPlan,
  });

  factory Organization.fromJson(Map<String, dynamic> json) =>
      _$OrganizationFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizationToJson(this);
}
