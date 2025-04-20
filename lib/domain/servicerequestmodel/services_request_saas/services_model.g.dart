// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServicesModel _$ServicesModelFromJson(Map<String, dynamic> json) =>
    ServicesModel(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      customerId: (json['customer_id'] as num?)?.toInt(),
      deviceId: (json['device_id'] as num?)?.toInt(),
      assignedTechnician: (json['assigned_technician'] as num?)?.toInt(),
      issueDescription: json['issue_description'] as String?,
      selectedIssue: (json['selected_issue'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      preferredTimeslot: json['preferred_date'] as String?,
      status: json['status'] as String?,
      completionNotes: json['completion_notes'],
      completionPhotoUrl: json['completion_photo_url'] as String?,
      newPartsUsed: (json['new_parts_used'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      jobType: json['job_type'] as String?,
      emergency: (json['emergency'] as num?)?.toInt(),
      startedAt: json['started_at'] == null
          ? null
          : DateTime.parse(json['started_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : Customer.fromJson(json['customer'] as Map<String, dynamic>),
      device: json['device'] == null
          ? null
          : Device.fromJson(json['device'] as Map<String, dynamic>),
      technician: json['technician'] == null
          ? null
          : Technician.fromJson(json['technician'] as Map<String, dynamic>),
    )
      ..preferedstarttime = json['preferred_start_time'] as String?
      ..createdAt = json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String);

Map<String, dynamic> _$ServicesModelToJson(ServicesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'customer_id': instance.customerId,
      'device_id': instance.deviceId,
      'assigned_technician': instance.assignedTechnician,
      'issue_description': instance.issueDescription,
      'selected_issue': instance.selectedIssue,
      'preferred_date': instance.preferredTimeslot,
      'preferred_start_time': instance.preferedstarttime,
      'status': instance.status,
      'completion_notes': instance.completionNotes,
      'completion_photo_url': instance.completionPhotoUrl,
      'new_parts_used': instance.newPartsUsed,
      'job_type': instance.jobType,
      'emergency': instance.emergency,
      'started_at': instance.startedAt?.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'organization': instance.organization,
      'customer': instance.customer,
      'device': instance.device,
      'technician': instance.technician,
    };
