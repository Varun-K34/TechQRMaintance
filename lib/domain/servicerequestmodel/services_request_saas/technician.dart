import 'package:json_annotation/json_annotation.dart';

part 'technician.g.dart';

@JsonSerializable()
class Technician {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'role')
  String? role;
  @JsonKey(name: 'full_name')
  String? fullName;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'phone')
  String? phone;
  @JsonKey(name: 'area_id')
  int? areaId;
  @JsonKey(name: 'avatar')
  String? avatar;

  Technician({
    this.id,
    this.orgId,
    this.role,
    this.fullName,
    this.email,
    this.phone,
    this.areaId,
    this.avatar,
  });

  factory Technician.fromJson(Map<String, dynamic> json) {
    return _$TechnicianFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TechnicianToJson(this);
}
