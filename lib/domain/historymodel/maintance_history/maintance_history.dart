import 'package:json_annotation/json_annotation.dart';

import 'hisdata.dart';

part 'maintance_history.g.dart';

@JsonSerializable()
class MaintanceHistory {
  @JsonKey(name: 'data')
  List<HisData>? data;

  MaintanceHistory({this.data});

  factory MaintanceHistory.fromJson(Map<String, dynamic> json) {
    return _$MaintanceHistoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MaintanceHistoryToJson(this);
}
