import 'package:json_annotation/json_annotation.dart';
import 'package:techqrmaintance/domain/deviceregmodel/devices_reg_model_saas/category.dart';

part 'brand_model.g.dart';

@JsonSerializable()
class BrandModel {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'category')
  Category? category;

  BrandModel({
    this.id,
    this.categoryId,
    this.name,
    this.category,
  });

  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return _$BrandModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BrandModelToJson(this);
}
