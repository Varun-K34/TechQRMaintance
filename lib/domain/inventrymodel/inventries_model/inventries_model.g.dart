// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventries_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventriesModel _$InventriesModelFromJson(Map<String, dynamic> json) =>
    InventriesModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Inventry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InventriesModelToJson(InventriesModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
