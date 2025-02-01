// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_reg_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthRegModel _$AuthRegModelFromJson(Map<String, dynamic> json) => AuthRegModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String? ?? "technician",
    );

Map<String, dynamic> _$AuthRegModelToJson(AuthRegModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
    };
