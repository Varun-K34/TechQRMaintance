// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => Customer(
      id: (json['id'] as num?)?.toInt(),
      qrCode: json['qr_code'],
      name: json['name'] as String?,
      email: json['email'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      dob: json['dob'],
      avatar: json['avatar'],
      role: json['role'] as String?,
      assignedArea: json['assigned_area'],
    );

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'id': instance.id,
      'qr_code': instance.qrCode,
      'name': instance.name,
      'email': instance.email,
      'email_verified_at': instance.emailVerifiedAt,
      'dob': instance.dob,
      'avatar': instance.avatar,
      'role': instance.role,
      'assigned_area': instance.assignedArea,
    };
