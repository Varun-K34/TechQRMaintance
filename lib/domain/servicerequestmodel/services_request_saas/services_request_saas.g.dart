// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_request_saas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServicesRequestSaas _$ServicesRequestSaasFromJson(Map<String, dynamic> json) =>
    ServicesRequestSaas(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ServicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServicesRequestSaasToJson(
        ServicesRequestSaas instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
