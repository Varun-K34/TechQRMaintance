import 'package:json_annotation/json_annotation.dart';

import 'hisdata.dart';

part 'history_maintenance.g.dart';

@JsonSerializable()
class HistoryMaintenance {
  @JsonKey(name: 'data')
  List<HisData>? data;

  HistoryMaintenance({this.data});

  factory HistoryMaintenance.fromJson(Map<String, dynamic> json) {
    return _$HistoryMaintenanceFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HistoryMaintenanceToJson(this);
}
