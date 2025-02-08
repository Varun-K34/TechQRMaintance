// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assigned_technician.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssignedTechnician _$AssignedTechnicianFromJson(Map<String, dynamic> json) =>
    AssignedTechnician(
      id: (json['id'] as num?)?.toInt(),
      qrCode: json['qr_code'],
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      dob: json['dob'],
      avatar: json['avatar'],
      role: json['role'] as String?,
      assignedArea: json['assigned_area'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$AssignedTechnicianToJson(AssignedTechnician instance) =>
    <String, dynamic>{
      'id': instance.id,
      'qr_code': instance.qrCode,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'dob': instance.dob,
      'avatar': instance.avatar,
      'role': instance.role,
      'assigned_area': instance.assignedArea,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
