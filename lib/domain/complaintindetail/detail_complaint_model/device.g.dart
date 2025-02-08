// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) => Device(
      id: (json['id'] as num?)?.toInt(),
      qrCode: json['qr_code'] as String?,
      brand: json['brand'] as String?,
      model: json['model'] as String?,
      location: json['location'] as String?,
      warrantyExpiry: json['warranty_expiry'] as String?,
      invoiceDetails: json['invoice_details'] as String?,
      registeredBy: (json['registered_by'] as num?)?.toInt(),
      registeredAt: json['registered_at'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'id': instance.id,
      'qr_code': instance.qrCode,
      'brand': instance.brand,
      'model': instance.model,
      'location': instance.location,
      'warranty_expiry': instance.warrantyExpiry,
      'invoice_details': instance.invoiceDetails,
      'registered_by': instance.registeredBy,
      'registered_at': instance.registeredAt,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
