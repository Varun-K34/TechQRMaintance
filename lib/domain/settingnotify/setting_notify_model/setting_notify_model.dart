import 'package:json_annotation/json_annotation.dart';

import 'notify_model.dart';

part 'setting_notify_model.g.dart';

@JsonSerializable()
class SettingNotifyModel {
  @JsonKey(name: 'data')
  List<NotifyModel>? data;

  SettingNotifyModel({this.data});

  factory SettingNotifyModel.fromJson(Map<String, dynamic> json) {
    return _$SettingNotifyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SettingNotifyModelToJson(this);
}
