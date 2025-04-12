import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/category.dart';

import 'package:json_annotation/json_annotation.dart';

part 'device.g.dart';

@JsonSerializable()
class Device {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'customer_id')
  int? customerId;
  @JsonKey(name: 'technician_id')
  dynamic technicianId;
  @JsonKey(name: 'qr_id')
  int? qrId;
  @JsonKey(name: 'category_id')
  int? categoryId;
  @JsonKey(name: 'brand_id')
  int? brandId;
  @JsonKey(name: 'device_model_id')
  int? deviceModelId;
  @JsonKey(name: 'serial_number')
  String? serialNumber;
  @JsonKey(name: 'installation_date')
  String? installationDate;
  @JsonKey(name: 'warranty_period')
  int? warrantyPeriod;
  @JsonKey(name: 'free_maintenance')
  int? freeMaintenance;
  @JsonKey(name: 'floor')
  int? floor;
  @JsonKey(name: 'room')
  String? room;
  @JsonKey(name: 'location_details')
  String? locationDetails;
  @JsonKey(name: 'category')
  Category? category;

  Device({
    this.id,
    this.orgId,
    this.customerId,
    this.technicianId,
    this.qrId,
    this.categoryId,
    this.brandId,
    this.deviceModelId,
    this.serialNumber,
    this.installationDate,
    this.warrantyPeriod,
    this.freeMaintenance,
    this.floor,
    this.room,
    this.locationDetails,
    this.category,
  });

  factory Device.fromJson(Map<String, dynamic> json) {
    return _$DeviceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}
