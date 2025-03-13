// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model_saas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModelSaas _$CustomerModelSaasFromJson(Map<String, dynamic> json) =>
    CustomerModelSaas(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'],
      gpsCoordinates: json['gps_coordinates'],
      masterQrId: (json['master_qr_id'] as num?)?.toInt(),
      pin: json['pin'] as String?,
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      masterQr: json['master_qr'] == null
          ? null
          : MasterQr.fromJson(json['master_qr'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomerModelSaasToJson(CustomerModelSaas instance) =>
    <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'full_name': instance.fullName,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'gps_coordinates': instance.gpsCoordinates,
      'master_qr_id': instance.masterQrId,
      'pin': instance.pin,
      'organization': instance.organization,
      'master_qr': instance.masterQr,
    };
