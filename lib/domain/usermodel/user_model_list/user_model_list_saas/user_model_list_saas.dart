import 'package:json_annotation/json_annotation.dart';

import 'user_model.dart';

part 'user_model_list_saas.g.dart';

@JsonSerializable()
class UserModelListSaas {
  @JsonKey(name: "data")
  List<UserModel>? data;

  UserModelListSaas({this.data});

  factory UserModelListSaas.fromJson(Map<String, dynamic> json) {
    return _$UserModelListSaasFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelListSaasToJson(this);
}
