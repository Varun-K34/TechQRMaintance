import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization.dart';

part 'areasaas.g.dart';

@JsonSerializable()
class AreaModelSaas {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'area_name')
  String? areaName;
  dynamic description;
  @JsonKey(name: 'organization')
  Organization? organization;

  AreaModelSaas({
    this.id,
    this.orgId,
    this.areaName,
    this.description,
    this.organization,
  });

  factory AreaModelSaas.fromJson(Map<String, dynamic> json) =>
      _$AreaModelSaasFromJson(json);

  Map<String, dynamic> toJson() => _$AreaModelSaasToJson(this);
}
