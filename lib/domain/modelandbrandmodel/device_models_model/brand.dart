import 'package:json_annotation/json_annotation.dart';

part 'brand.g.dart';

@JsonSerializable()
class Brand {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  @JsonKey(name: 'name')
  String? name;

  Brand({
    this.id,
    this.categoryId,
    this.name,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);

  Map<String, dynamic> toJson() => _$BrandToJson(this);
}
