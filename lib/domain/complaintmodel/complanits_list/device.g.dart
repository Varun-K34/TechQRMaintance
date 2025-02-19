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
      registeredByUser: (json['registered_by'] as num?)?.toInt(),
      registeredAt: json['registered_at'] as String?,
    )..serialNo = json['serial_no'] as String?;

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'id': instance.id,
      'serial_no': instance.serialNo,
      'qr_code': instance.qrCode,
      'brand': instance.brand,
      'model': instance.model,
      'location': instance.location,
      'warranty_expiry': instance.warrantyExpiry,
      'invoice_details': instance.invoiceDetails,
      'registered_by': instance.registeredByUser,
      'registered_at': instance.registeredAt,
    };
