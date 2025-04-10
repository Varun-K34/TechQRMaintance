// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaModelList _$AreaModelListFromJson(Map<String, dynamic> json) =>
    AreaModelList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => AreaModelSaas.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AreaModelListToJson(AreaModelList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
