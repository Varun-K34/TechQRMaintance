import 'package:json_annotation/json_annotation.dart';

import 'customer_model_saas.dart';

part 'customer_model_list_saas.g.dart';

@JsonSerializable()
class CustomerModelListSaas {
  @JsonKey(name: 'data')
  List<CustomerModelSaas>? data;

  CustomerModelListSaas({this.data});

  factory CustomerModelListSaas.fromJson(Map<String, dynamic> json) {
    return _$CustomerModelListSaasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerModelListSaasToJson(this);
}
