import 'package:json_annotation/json_annotation.dart';

import 'inventry.dart';

part 'inventries_model.g.dart';

@JsonSerializable()
class InventriesModel {
  @JsonKey(name: 'data')
  List<Inventry>? data;

  InventriesModel({this.data});

  factory InventriesModel.fromJson(Map<String, dynamic> json) {
    return _$InventriesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$InventriesModelToJson(this);
}
