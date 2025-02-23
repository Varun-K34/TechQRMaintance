// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maintance_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MaintanceHistory _$MaintanceHistoryFromJson(Map<String, dynamic> json) =>
    MaintanceHistory(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HisData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MaintanceHistoryToJson(MaintanceHistory instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
