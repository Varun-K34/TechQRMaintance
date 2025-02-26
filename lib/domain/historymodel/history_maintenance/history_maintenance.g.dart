// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_maintenance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryMaintenance _$HistoryMaintenanceFromJson(Map<String, dynamic> json) =>
    HistoryMaintenance(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HisData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HistoryMaintenanceToJson(HistoryMaintenance instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
