// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_qr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MasterQr _$MasterQrFromJson(Map<String, dynamic> json) => MasterQr(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      qrCode: json['qr_code'] as String?,
      qrType: json['qr_type'] as String?,
      assignedToId: (json['assigned_to_id'] as num?)?.toInt(),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$MasterQrToJson(MasterQr instance) => <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'qr_code': instance.qrCode,
      'qr_type': instance.qrType,
      'assigned_to_id': instance.assignedToId,
      'status': instance.status,
    };
