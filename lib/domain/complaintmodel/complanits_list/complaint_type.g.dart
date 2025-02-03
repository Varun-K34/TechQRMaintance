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
    );

Map<String, dynamic> _$ComplaintTypeToJson(ComplaintType instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };
