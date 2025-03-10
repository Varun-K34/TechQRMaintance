import 'package:json_annotation/json_annotation.dart';

import 'organization.dart';

part 'organization_model.g.dart';

@JsonSerializable()
class OrganizationModel {
  @JsonKey(name: 'data')
  List<Organization>? data;

  OrganizationModel({this.data});

  factory OrganizationModel.fromJson(Map<String, dynamic> json) {
    return _$OrganizationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OrganizationModelToJson(this);
}
