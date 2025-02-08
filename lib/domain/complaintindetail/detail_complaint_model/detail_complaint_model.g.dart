// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_complaint_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailComplaintModel _$DetailComplaintModelFromJson(
        Map<String, dynamic> json) =>
    DetailComplaintModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DetailComplaintModelToJson(
        DetailComplaintModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
