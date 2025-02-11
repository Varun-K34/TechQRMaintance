// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_reg_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceRegModel _$DeviceRegModelFromJson(Map<String, dynamic> json) =>
    DeviceRegModel(
      brand: json['brand'] as String?,
      model: json['model'] as String?,
      registeredBy: json['registered_by'] as String?,
      location: json['location'] as String?,
      warrantyExpiry: json['warranty_expiry'] as String?,
      registeredAt: json['registered_at'] as String?,
      invoiceDetails: json['invoice_details'] as String?,
    );

Map<String, dynamic> _$DeviceRegModelToJson(DeviceRegModel instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'model': instance.model,
      'registered_by': instance.registeredBy,
      'location': instance.location,
      'warranty_expiry': instance.warrantyExpiry,
      'registered_at': instance.registeredAt,
      'invoice_details': instance.invoiceDetails,
    };
