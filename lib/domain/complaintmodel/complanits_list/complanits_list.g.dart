// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complanits_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComplanitsList _$ComplanitsListFromJson(Map<String, dynamic> json) =>
    ComplanitsList(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ComplanitsListToJson(ComplanitsList instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
