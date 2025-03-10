// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrganizationModel _$OrganizationModelFromJson(Map<String, dynamic> json) =>
    OrganizationModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Organization.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OrganizationModelToJson(OrganizationModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
