// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_reg_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRegModel _$AuthRegModelFromJson(Map<String, dynamic> json) => AuthRegModel(
      orgId: (json['org_id'] as num?)?.toInt(),
      full_name: json['full_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String? ?? "Technician",
    );

Map<String, dynamic> _$AuthRegModelToJson(AuthRegModel instance) =>
    <String, dynamic>{
      'org_id': instance.orgId,
      'full_name': instance.full_name,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
    };
