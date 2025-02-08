// ignore: depend_on_referenced_packages
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

  ComplaintType({
    this.id,
    this.name,
    this.description,
  });

  factory ComplaintType.fromJson(Map<String, dynamic> json) {
    return _$ComplaintTypeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ComplaintTypeToJson(this);
}
