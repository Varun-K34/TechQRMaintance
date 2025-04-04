// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'docdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocData _$DocDataFromJson(Map<String, dynamic> json) => DocData(
      orgId: json['org_id'] as String?,
      deviceId: json['device_id'] as String?,
      name: json['name'] as String?,
      fileUrl: json['file_url'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DocDataToJson(DocData instance) => <String, dynamic>{
      'org_id': instance.orgId,
      'device_id': instance.deviceId,
      'name': instance.name,
      'file_url': instance.fileUrl,
      'id': instance.id,
    };
