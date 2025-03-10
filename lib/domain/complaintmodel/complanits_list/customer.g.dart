// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: (json['id'] as num?)?.toInt(),
      qrCode: json['qr_code'],
      name: json['full_name'] as String?,
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

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'qr_code': instance.qrCode,
      'full_name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'dob': instance.dob,
      'avatar': instance.avatar,
      'role': instance.role,
      'assigned_area': instance.assignedArea,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
