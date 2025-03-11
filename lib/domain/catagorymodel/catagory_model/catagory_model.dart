import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/category.dart';

part 'catagory_model.g.dart';

@JsonSerializable()
class CatagoryModel {
  @JsonKey(name: 'data')
  List<Category>? data;

  CatagoryModel({this.data});

  factory CatagoryModel.fromJson(Map<String, dynamic> json) {
    return _$CatagoryModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CatagoryModelToJson(this);
}
