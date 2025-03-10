// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model_list_saas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerModelListSaas _$CustomerModelListSaasFromJson(
        Map<String, dynamic> json) =>
    CustomerModelListSaas(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CustomerModelSaas.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerModelListSaasToJson(
        CustomerModelListSaas instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
