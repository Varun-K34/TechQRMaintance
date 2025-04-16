// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tech_perfomence_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TechPerfomenceUserModel _$TechPerfomenceUserModelFromJson(
        Map<String, dynamic> json) =>
    TechPerfomenceUserModel(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      averageCompletionTime: json['average_completion_time'] as String?,
      customerFeedbackRating: json['customer_feedback_rating'] as String?,
      lastUpdated: json['last_updated'] as String?,
      techid: (json['technician_id'] as num?)?.toInt(),
      totalCompletedServices:
          (json['total_completed_services'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TechPerfomenceUserModelToJson(
        TechPerfomenceUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'technician_id': instance.techid,
      'total_completed_services': instance.totalCompletedServices,
      'average_completion_time': instance.averageCompletionTime,
      'customer_feedback_rating': instance.customerFeedbackRating,
      'last_updated': instance.lastUpdated,
    };
