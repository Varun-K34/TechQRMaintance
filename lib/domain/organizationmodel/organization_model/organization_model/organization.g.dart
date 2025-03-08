// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'organization.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Organization _$OrganizationFromJson(Map<String, dynamic> json) => Organization(
      id: (json['id'] as num?)?.toInt(),
      orgName: json['org_name'] as String?,
      orgEmail: json['org_email'] as String?,
      orgPhone: json['org_phone'],
      orgAddress: json['org_address'],
      logoUrl: json['logo_url'],
      subscriptionPlan: json['subscription_plan'] as String?,
    );

Map<String, dynamic> _$OrganizationToJson(Organization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'org_name': instance.orgName,
      'org_email': instance.orgEmail,
      'org_phone': instance.orgPhone,
      'org_address': instance.orgAddress,
      'logo_url': instance.logoUrl,
      'subscription_plan': instance.subscriptionPlan,
    };
