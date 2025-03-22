// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technician.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Technician _$TechnicianFromJson(Map<String, dynamic> json) => Technician(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      role: json['role'] as String?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      areaId: (json['area_id'] as num?)?.toInt(),
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$TechnicianToJson(Technician instance) =>
    <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'role': instance.role,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'area_id': instance.areaId,
      'avatar': instance.avatar,
    };
