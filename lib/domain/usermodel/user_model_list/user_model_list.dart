import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/complaintmodel/complanits_list/customer.dart';

part 'user_model_list.g.dart';

@JsonSerializable()
class UserModelList {
  @JsonKey(name: "data")
  List<Customer>? data;

  UserModelList({this.data = const []});

  factory UserModelList.fromJson(Map<String, dynamic> json) {
    return _$UserModelListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserModelListToJson(this);
}
