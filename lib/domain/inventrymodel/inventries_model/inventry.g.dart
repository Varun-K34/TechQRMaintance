// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Inventry _$InventryFromJson(Map<String, dynamic> json) => Inventry(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      deviceId: (json['device_id'] as num?)?.toInt(),
      vendorId: (json['vendor_id'] as num?)?.toInt(),
      itemType: json['item_type'] as String?,
      name: json['name'] as String?,
      partCode: json['part_code'] as String?,
      quantityInStock: (json['quantity_in_stock'] as num?)?.toInt(),
      unitCost: json['unit_cost'] as String?,
      reorderThreshold: (json['reorder_threshold'] as num?)?.toInt(),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$InventryToJson(Inventry instance) => <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'device_id': instance.deviceId,
      'vendor_id': instance.vendorId,
      'item_type': instance.itemType,
      'name': instance.name,
      'part_code': instance.partCode,
      'quantity_in_stock': instance.quantityInStock,
      'unit_cost': instance.unitCost,
      'reorder_threshold': instance.reorderThreshold,
      'organization': instance.organization,
    };
