import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization.dart';

part 'inventry.g.dart';

@JsonSerializable()
class Inventry {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'device_id')
  int? deviceId;
  @JsonKey(name: 'vendor_id')
  int? vendorId;
  @JsonKey(name: 'item_type')
  String? itemType;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'part_code')
  String? partCode;
  @JsonKey(name: 'quantity_in_stock')
  int? quantityInStock;
  @JsonKey(name: 'unit_cost')
  String? unitCost;
  @JsonKey(name: 'reorder_threshold')
  int? reorderThreshold;
  @JsonKey(name: 'organization')
  Organization? organization;

  Inventry({
    this.id,
    this.orgId,
    this.deviceId,
    this.vendorId,
    this.itemType,
    this.name,
    this.partCode,
    this.quantityInStock,
    this.unitCost,
    this.reorderThreshold,
    this.organization,
  });

  factory Inventry.fromJson(Map<String, dynamic> json) =>
      _$InventryFromJson(json);

  Map<String, dynamic> toJson() => _$InventryToJson(this);
}
