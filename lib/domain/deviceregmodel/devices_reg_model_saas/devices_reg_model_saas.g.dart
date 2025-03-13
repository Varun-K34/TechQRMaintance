// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_reg_model_saas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DevicesRegModelSaas _$DevicesRegModelSaasFromJson(Map<String, dynamic> json) =>
    DevicesRegModelSaas(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DeviceModelSaas.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DevicesRegModelSaasToJson(
        DevicesRegModelSaas instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
