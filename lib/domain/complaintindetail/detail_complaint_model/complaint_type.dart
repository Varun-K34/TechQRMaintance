import 'package:json_annotation/json_annotation.dart';

part 'complaint_type.g.dart';

@JsonSerializable()
class ComplaintType {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  ComplaintType({
    this.id,
    this.name,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  factory ComplaintType.fromJson(Map<String, dynamic> json) {
    return _$ComplaintTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComplaintTypeToJson(this);
}
