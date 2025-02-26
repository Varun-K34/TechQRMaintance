// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hisdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HisData _$HisDataFromJson(Map<String, dynamic> json) => HisData(
      id: (json['id'] as num?)?.toInt(),
      deviceId: (json['device_id'] as num?)?.toInt(),
      technicianId: (json['technician_id'] as num?)?.toInt(),
      serviceDate: json['service_date'] == null
          ? null
          : DateTime.parse(json['service_date'] as String),
      serviceDescription: json['service_description'] as String?,
      partsChanged: json['parts_changed'] as String?,
      serviceCharge: json['service_charge'] as String?,
      photos: json['photos'] as List<dynamic>?,
      videos: json['videos'] as List<dynamic>?,
      device: json['device'] == null
          ? null
          : Device.fromJson(json['device'] as Map<String, dynamic>),
      technician: json['technician'] == null
          ? null
          : AssignedTechnician.fromJson(
              json['technician'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HisDataToJson(HisData instance) => <String, dynamic>{
      'id': instance.id,
      'device_id': instance.deviceId,
      'technician_id': instance.technicianId,
      'service_date': instance.serviceDate?.toIso8601String(),
      'service_description': instance.serviceDescription,
      'parts_changed': instance.partsChanged,
      'service_charge': instance.serviceCharge,
      'photos': instance.photos,
      'videos': instance.videos,
      'device': instance.device,
      'technician': instance.technician,
    };
