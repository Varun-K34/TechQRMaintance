// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tech_perfimence_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TechPerfimenceModel _$TechPerfimenceModelFromJson(Map<String, dynamic> json) =>
    TechPerfimenceModel(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      technicianId: (json['technician_id'] as num?)?.toInt(),
      totalCompletedServices:
          (json['total_completed_services'] as num?)?.toInt(),
      averageCompletionTime: json['average_completion_time'] as String?,
      customerFeedbackRating: json['customer_feedback_rating'] as String?,
      lastUpdated: json['last_updated'] as String?,
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
      technician: json['technician'] == null
          ? null
          : Technician.fromJson(json['technician'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TechPerfimenceModelToJson(
        TechPerfimenceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'technician_id': instance.technicianId,
      'total_completed_services': instance.totalCompletedServices,
      'average_completion_time': instance.averageCompletionTime,
      'customer_feedback_rating': instance.customerFeedbackRating,
      'last_updated': instance.lastUpdated,
      'organization': instance.organization,
      'technician': instance.technician,
    };
