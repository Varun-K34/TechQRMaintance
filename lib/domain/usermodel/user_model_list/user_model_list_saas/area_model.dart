import 'package:json_annotation/json_annotation.dart';

part 'area_model.g.dart';

@JsonSerializable()
class AreaModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'area_name')
  String? areaName;
  @JsonKey(name: 'description')
  String? description;

  AreaModel({
    this.id,
    this.orgId,
    this.areaName,
    this.description,
  });

  factory AreaModel.fromJson(Map<String, dynamic> json) =>
      _$AreaModelFromJson(json);

  Map<String, dynamic> toJson() => _$AreaModelToJson(this);
}
