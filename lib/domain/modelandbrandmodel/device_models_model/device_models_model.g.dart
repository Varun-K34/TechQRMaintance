// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_models_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceModelsModel _$DeviceModelsModelFromJson(Map<String, dynamic> json) =>
    DeviceModelsModel(
      id: (json['id'] as num?)?.toInt(),
      brandId: (json['brand_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      brand: json['brand'] == null
          ? null
          : Brand.fromJson(json['brand'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeviceModelsModelToJson(DeviceModelsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand_id': instance.brandId,
      'name': instance.name,
      'brand': instance.brand,
    };
