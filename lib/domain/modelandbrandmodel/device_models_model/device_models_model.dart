import 'package:json_annotation/json_annotation.dart';

import 'brand.dart';

part 'device_models_model.g.dart';

@JsonSerializable()
class DeviceModelsModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'brand_id')
  int? brandId;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'brand')
  Brand? brand;

  DeviceModelsModel({
    this.id,
    this.brandId,
    this.name,
    this.brand,
  });

  factory DeviceModelsModel.fromJson(Map<String, dynamic> json) {
    return _$DeviceModelsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DeviceModelsModelToJson(this);
}
