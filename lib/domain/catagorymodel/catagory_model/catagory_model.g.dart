// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catagory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatagoryModel _$CatagoryModelFromJson(Map<String, dynamic> json) =>
    CatagoryModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CatagoryModelToJson(CatagoryModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
