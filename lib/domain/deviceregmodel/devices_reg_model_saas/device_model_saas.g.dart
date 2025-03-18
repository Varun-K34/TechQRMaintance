// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model_saas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceModelSaas _$DeviceModelSaasFromJson(Map<String, dynamic> json) =>
    DeviceModelSaas(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      technicianId: (json['technician_id'] as num?)?.toInt(),
      qrId: json['qr_id'] as String?,
      brand: json['brand_id'] as String?,
      categoryId: json['category_id'] as String?,
      model: json['device_model_id'] as String?,
      serialNumber: json['serial_number'] as String?,
      installationDate: json['installation_date'] as String?,
      warrantyPeriod: (json['warranty_period'] as num?)?.toInt(),
      freeMaintenance: (json['free_maintenance'] as num?)?.toInt(),
      locationDetails: json['location_details'] as String?,
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : CustomerModelSaas.fromJson(
              json['customer'] as Map<String, dynamic>),
      technician: json['technician'] == null
          ? null
          : UserModel.fromJson(json['technician'] as Map<String, dynamic>),
      qrCode: json['qr_code'] == null
          ? null
          : QrCode.fromJson(json['qr_code'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      documents: json['documents'] as List<dynamic>?,
    );

Map<String, dynamic> _$DeviceModelSaasToJson(DeviceModelSaas instance) =>
    <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'customer_id': instance.customerId,
      'technician_id': instance.technicianId,
      'qr_id': instance.qrId,
      'brand_id': instance.brand,
      'category_id': instance.categoryId,
      'device_model_id': instance.model,
      'serial_number': instance.serialNumber,
      'installation_date': instance.installationDate,
      'warranty_period': instance.warrantyPeriod,
      'free_maintenance': instance.freeMaintenance,
      'location_details': instance.locationDetails,
      'organization': instance.organization,
      'customer': instance.customer,
      'technician': instance.technician,
      'qr_code': instance.qrCode,
      'category': instance.category,
      'documents': instance.documents,
    };
