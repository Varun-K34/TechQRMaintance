// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'auth_reg_model.g.dart';

@JsonSerializable()
class AuthRegModel {
  @JsonKey(name: 'org_id')
  int? orgId;
  @JsonKey(name: 'full_name')
  // ignore: non_constant_identifier_names
  String? full_name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'role')
  String? role;
  @JsonKey(name: 'area_id')
  String? areaId;

  AuthRegModel({
    this.orgId,
    // ignore: non_constant_identifier_names
    this.full_name,
    this.email,
    this.password,
    this.role = "Technician",
    this.areaId,
  });

  factory AuthRegModel.fromJson(Map<String, dynamic> json) {
    return _$AuthRegModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthRegModelToJson(this);
}
