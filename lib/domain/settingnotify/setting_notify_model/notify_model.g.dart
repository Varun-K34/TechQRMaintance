// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotifyModel _$NotifyModelFromJson(Map<String, dynamic> json) => NotifyModel(
      id: (json['id'] as num?)?.toInt(),
      orgId: (json['org_id'] as num?)?.toInt(),
      razorpayApiKey: json['razorpay_api_key'] as String?,
      razorpayApiSecret: json['razorpay_api_secret'] as String?,
      notificationInterval: (json['notification_interval'] as num?)?.toInt(),
      organization: json['organization'] == null
          ? null
          : Organization.fromJson(json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotifyModelToJson(NotifyModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'org_id': instance.orgId,
      'razorpay_api_key': instance.razorpayApiKey,
      'razorpay_api_secret': instance.razorpayApiSecret,
      'notification_interval': instance.notificationInterval,
      'organization': instance.organization,
    };
