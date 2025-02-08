// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComplaintType _$ComplaintTypeFromJson(Map<String, dynamic> json) =>
    ComplaintType(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$ComplaintTypeToJson(ComplaintType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
