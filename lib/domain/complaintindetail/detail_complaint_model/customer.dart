import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable()
class Customer {
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

  Customer({
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

  factory Customer.fromJson(Map<String, dynamic> json) {
    return _$CustomerFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
