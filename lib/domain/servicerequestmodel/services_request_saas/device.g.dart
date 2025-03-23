// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) => Device(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      technicianId: json['technician_id'],
      qrId: (json['qr_id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      brandId: (json['brand_id'] as num?)?.toInt(),
      deviceModelId: (json['device_model_id'] as num?)?.toInt(),
      serialNumber: json['serial_number'] as String?,
      installationDate: json['installation_date'] as String?,
      warrantyPeriod: (json['warranty_period'] as num?)?.toInt(),
      freeMaintenance: (json['free_maintenance'] as num?)?.toInt(),
      locationDetails: json['location_details'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'customer_id': instance.customerId,
      'technician_id': instance.technicianId,
      'qr_id': instance.qrId,
      'category_id': instance.categoryId,
      'brand_id': instance.brandId,
      'device_model_id': instance.deviceModelId,
      'serial_number': instance.serialNumber,
      'installation_date': instance.installationDate,
      'warranty_period': instance.warrantyPeriod,
      'free_maintenance': instance.freeMaintenance,
      'location_details': instance.locationDetails,
      'category': instance.category,
    };
