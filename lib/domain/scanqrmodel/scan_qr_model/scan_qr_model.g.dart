// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scan_qr_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScanQrModel _$ScanQrModelFromJson(Map<String, dynamic> json) => ScanQrModel(
      device: json['device'] == null
          ? null
          : Device.fromJson(json['device'] as Map<String, dynamic>),
      complaintTypes: (json['complaint_types'] as List<dynamic>?)
          ?.map((e) => ComplaintType.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScanQrModelToJson(ScanQrModel instance) =>
    <String, dynamic>{
      'device': instance.device,
      'complaint_types': instance.complaintTypes,
    };
