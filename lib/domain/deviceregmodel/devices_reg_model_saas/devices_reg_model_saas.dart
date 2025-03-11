import 'package:json_annotation/json_annotation.dart';

import 'device_model_saas.dart';

part 'devices_reg_model_saas.g.dart';

@JsonSerializable()
class DevicesRegModelSaas {
  @JsonKey(name: 'data')
  List<DeviceModelSaas>? data;

  DevicesRegModelSaas({this.data});

  factory DevicesRegModelSaas.fromJson(Map<String, dynamic> json) {
    return _$DevicesRegModelSaasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DevicesRegModelSaasToJson(this);
}
