import 'package:json_annotation/json_annotation.dart';

part 'assigned_technician.g.dart';

@JsonSerializable()
class AssignedTechnician {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'qr_code')
  dynamic qrCode;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'email_verified_at')
  dynamic emailVerifiedAt;
  @JsonKey(name: 'dob')
  dynamic dob;
  @JsonKey(name: 'avatar')
  dynamic avatar;
  @JsonKey(name: 'role')
  String? role;
  @JsonKey(name: 'assigned_area')
  dynamic assignedArea;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;

  AssignedTechnician({
    this.id,
    this.qrCode,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.dob,
    this.avatar,
    this.role,
    this.assignedArea,
    this.createdAt,
    this.updatedAt,
  });

  factory AssignedTechnician.fromJson(Map<String, dynamic> json) {
    return _$AssignedTechnicianFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AssignedTechnicianToJson(this);
}
