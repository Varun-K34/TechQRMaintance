// ignore: depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/customer_model/customer_model_list_saas/customer_model_saas.dart';
import 'package:techqrmaintance/domain/organizationmodel/organization_model/organization_model/organization.dart';
import 'package:techqrmaintance/domain/usermodel/user_model_list/user_model_list_saas/user_model.dart';

import 'category.dart';
import 'qr_code.dart';

part 'device_model_saas.g.dart';

@JsonSerializable()
class DeviceModelSaas {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'customer_id')
  int? customerId;
  @JsonKey(name: 'technician_id')
  int? technicianId;
  @JsonKey(name: 'qr_id')
  String? qrId;
  @JsonKey(name: 'brand_id')
  String? brand;
  @JsonKey(name: 'category_id')
  String? categoryId;
  @JsonKey(name: 'device_model_id')
  String? model;
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
  @JsonKey(name: 'organization')
  Organization? organization;
  @JsonKey(name: 'customer')
  CustomerModelSaas? customer;
  @JsonKey(name: 'technician')
  UserModel? technician;
  @JsonKey(name: 'qr_code')
  QrCode? qrCode;
  @JsonKey(name: 'category')
  Category? category;
  @JsonKey(name: 'documents')
  List<dynamic>? documents;

  DeviceModelSaas({
    this.id,
    this.orgId,
    this.customerId,
    this.technicianId,
    this.qrId,
    this.brand,
    this.categoryId,
    this.model,
    this.serialNumber,
    this.installationDate,
    this.warrantyPeriod,
    this.freeMaintenance,
    this.floor, 
    this.room,  
    this.locationDetails,
    this.organization,
    this.customer,
    this.technician,
    this.qrCode,
    this.category,
    this.documents,
  });

  DeviceModelSaas.create({
    this.orgId,
    this.customerId,
    this.technicianId,
    this.qrId,
    this.brand,
    this.categoryId,
    this.model,
    this.serialNumber,
    this.installationDate,
    this.warrantyPeriod,
    this.freeMaintenance,
    this.floor, 
    this.room,  
    this.locationDetails,
  });

  factory DeviceModelSaas.fromJson(Map<String, dynamic> json) =>
      _$DeviceModelSaasFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceModelSaasToJson(this);
}
