// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QrCode _$QrCodeFromJson(Map<String, dynamic> json) => QrCode(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      qrCode: json['qr_code'] as String?,
      qrType: json['qr_type'] as String?,
      assignedToId: (json['assigned_to_id'] as num?)?.toInt(),
      status: json['status'] as String?,
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      assignedCustomer: json['assigned_customer'] == null
          ? null
          : UserModel.fromJson(
              json['assigned_customer'] as Map<String, dynamic>),
      assignedDevice: json['assigned_device'] == null
          ? null
          : DeviceModelSaas.fromJson(
              json['assigned_device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QrCodeToJson(QrCode instance) => <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'qr_code': instance.qrCode,
      'qr_type': instance.qrType,
      'assigned_to_id': instance.assignedToId,
      'status': instance.status,
      'organization': instance.organization,
      'assigned_customer': instance.assignedCustomer,
      'assigned_device': instance.assignedDevice,
    };
