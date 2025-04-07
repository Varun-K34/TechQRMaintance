// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_notify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettingNotifyModel _$SettingNotifyModelFromJson(Map<String, dynamic> json) =>
    SettingNotifyModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NotifyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SettingNotifyModelToJson(SettingNotifyModel instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
