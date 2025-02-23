// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hisdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HisData _$HisDataFromJson(Map<String, dynamic> json) => HisData(
      id: (json['id'] as num?)?.toInt(),
      deviceId: (json['device_id'] as num?)?.toInt(),
      technicianId: (json['technician_id'] as num?)?.toInt(),
      serviceDate: json['service_date'] as String?,
      serviceDescription: json['service_description'] as String?,
      partsChanged: json['parts_changed'] as String?,
      serviceCharge: (json['service_charge'] as num?)?.toInt(),
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
      videos:
          (json['videos'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$HisDataToJson(HisData instance) => <String, dynamic>{
      'id': instance.id,
      'device_id': instance.deviceId,
      'technician_id': instance.technicianId,
      'service_date': instance.serviceDate,
      'service_description': instance.serviceDescription,
      'parts_changed': instance.partsChanged,
      'service_charge': instance.serviceCharge,
      'photos': instance.photos,
      'videos': instance.videos,
    };
