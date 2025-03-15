import 'package:json_annotation/json_annotation.dart';

import 'services_model.dart';

part 'services_request_saas.g.dart';

@JsonSerializable()
class ServicesRequestSaas {
  @JsonKey(name: 'data')
  List<ServicesModel>? data;

  ServicesRequestSaas({this.data});

  factory ServicesRequestSaas.fromJson(Map<String, dynamic> json) {
    return _$ServicesRequestSaasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ServicesRequestSaasToJson(this);
}
