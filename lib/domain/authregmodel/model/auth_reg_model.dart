// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'auth_reg_model.g.dart';

@JsonSerializable()
class AuthRegModel {
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'email')
  String? email;
  @JsonKey(name: 'password')
  String? password;
  @JsonKey(name: 'role')
  String? role;

  AuthRegModel({
    this.name,
    this.email,
    this.password,
    this.role = "technician",
  });

  factory AuthRegModel.fromJson(Map<String, dynamic> json) {
    return _$AuthRegModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthRegModelToJson(this);
}
