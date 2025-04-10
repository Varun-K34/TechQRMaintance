// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'areasaas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaModelSaas _$AreaModelSaasFromJson(Map<String, dynamic> json) =>
    AreaModelSaas(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      areaName: json['area_name'] as String?,
      description: json['description'],
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AreaModelSaasToJson(AreaModelSaas instance) =>
    <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'area_name': instance.areaName,
      'description': instance.description,
      'organization': instance.organization,
    };
